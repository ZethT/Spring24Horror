extends CharacterBody3D

# Navigation agent node handles pathfinding for Ghost
@onready var nav_agent = $NavigationAgent3D
@onready var timer = $follow
@onready var player = get_node("/root/Game/Elena")

var speed = 2.0
const JUMP_VELOCITY = 4.5

# Get the gravity from the project settings to be synced with RigidBody nodes.
var gravity = ProjectSettings.get_setting("physics/3d/default_gravity")


func _physics_process(delta):
	var current_location = global_transform.origin
	var next_location = nav_agent.get_next_path_position()
	var new_velocity = (next_location - current_location).normalized() * speed
	velocity = velocity.move_toward(new_velocity, .25)
	look_at(next_location)
	
	# Add the gravity.
	if not is_on_floor():
		velocity.y -= gravity * delta
	
	
	move_and_slide()

# Set the destination for the navigation agent
func update_target_location(target_location):
	nav_agent.target_position = target_location


func _on_follow_timeout():
	var rng = randf()
	if rng < 0.1:
		update_target_location(player.global_position)
	elif rng < 0.3:
		update_target_location(Vector3(randf_range(-15, 10), 0, randf_range(-10, 30)))
