extends CharacterBody3D

@export var mouse_sensitivity = 0.002
var held_item

const SPEED = 5.0
const JUMP_VELOCITY = 4.5

# Get the gravity from the project settings to be synced with RigidBody nodes.
var gravity = ProjectSettings.get_setting("physics/3d/default_gravity")


func _ready():
	Input.mouse_mode = Input.MOUSE_MODE_CAPTURED


func _physics_process(delta):
	# Add gravity to y velocity when in the air
	if not is_on_floor():
		velocity.y -= gravity * delta

	# Jump!
	if Input.is_action_just_pressed("jump") and is_on_floor():
		velocity.y = JUMP_VELOCITY

	# Set velocity based on input direction
	var input_dir = Input.get_vector("left", "right", "forward", "backward")
	var direction = (transform.basis * Vector3(input_dir.x, 0, input_dir.y)).normalized()
	if direction:
		velocity.x = direction.x * SPEED
		velocity.z = direction.z * SPEED
	else:
		velocity.x = 0
		velocity.z = 0

	move_and_slide()

func _unhandled_input(event):
	if event.is_action_pressed("interact"):
		# Check RayCast3D collision to see if the object player is looking at is interactable
		var object = $Head/RayCast3D.get_collider()
		if object:
			# Grab or interact with the collided object if possible
			if object.has_method("interact"):
				object.interact(held_item)
			elif object.has_method("grab"):
				object.grab($Head/Hand)
				held_item = object
				print(held_item.get_name())
		elif held_item:
			# Release held item if interact is pressed when not looking at an interactable object
			held_item.release(self)
			held_item = null
	
	# Frees the cursor when escape is pressed
	if event.is_action_pressed("ui_cancel"):
		Input.mouse_mode = Input.MOUSE_MODE_VISIBLE
	
	# This section handles rotating the camera based on mouse movement
	if event is InputEventMouseMotion and Input.mouse_mode == Input.MOUSE_MODE_CAPTURED:
		# Entire body rotates when looking left and right
		rotate_y(-event.relative.x * mouse_sensitivity)
		# Only the head rotates when looking up and down
		$Head.rotate_x(-event.relative.y * mouse_sensitivity)
		$Head.rotation.x = clampf($Head.rotation.x, -deg_to_rad(90), deg_to_rad(90))
