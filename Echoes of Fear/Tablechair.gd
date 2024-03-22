extends RigidBody3D

# Reference to the player character (set this in the script)
var player: CharacterBody3D
var sittingPosition: Vector3
var originalPosition: Vector3

func _ready():
	# Assuming you've set up the sitting position
	sittingPosition = Vector3(-3.5, -0.1, 0.5)  # Adjust the position as needed

	# Find the player node by name (replace "Elena" with the actual name)
	player = get_node("/root/Game/Elena")
	if !player:
		print("Error: Player node not found. Make sure it has the correct name.")
		if player:
			player.transform.origin = sittingPosition
			player.velocity = Vector3.ZERO  # Stop player movement
			player.speed = 0
			#player.gravity = 0  # Disable gravity temporarily
			#player.mouse_mode = Input.MOUSE_MODE_VISIBLE  # Show cursor
		if player:
			player.gravity = ProjectSettings.get_setting("physics/3d/default_gravity")
			player.speed = 5
			#player.mouse_mode = Input.MOUSE_MODE_CAPTURED  # Capture mouse again

func interact(held_item):
	# Called when the player interacts with this object
	if !held_item:
		# Move the player to the sitting position
		if player:
			player.transform.origin = sittingPosition
			player.velocity = Vector3.ZERO  # Stop player movement
			player.mouse_mode = Input.MOUSE_MODE_VISIBLE  # Show cursor
	else:
		# Stand up (optional: play a stand-up animation)
		if player:
			player.transform.origin = originalPosition
			player.gravity = ProjectSettings.get_setting("physics/3d/default_gravity")
			player.mouse_mode = Input.MOUSE_MODE_CAPTURED  # Capture mouse again

func grab(hand):
	pass
	# Called when the player grabs this object (if applicable)
	# Implement grabbing logic here (e.g., attach to hand bone)
