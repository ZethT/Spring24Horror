extends Spatial

# Reference to the player character (set this in the script)
var player: KinematicBody3D
var sittingPosition: Vector3

func _ready():
	# Assuming you've set up the sitting position
	sittingPosition = Vector3(0, 1.0, 0)  # Adjust the position as needed
		# Find the player node by name (replace "Player" with the actual name)
	player = get_node("Elena")
	if player:
		# Assuming you've set up the sitting position
		sittingPosition = Vector3(0, 1.0, 0)  # Adjust the position as needed
	else:
		print("Error: Player node not found. Make sure it has the correct name.")

func interact(held_item):
	# Called when the player interacts with this object
	if !held_item:
		# Move the player to the sitting position
		if player:
			player.transform.origin = sittingPosition
			player.velocity = Vector3.ZERO  # Stop player movement
			player.gravity = 0  # Disable gravity temporarily
			player.mouse_mode = Input.MOUSE_MODE_VISIBLE  # Show cursor
	else:
		# Stand up (optional: play a stand-up animation)
		if player:
			player.transform.origin = original_position
			player.gravity = ProjectSettings.get_setting("physics/3d/default_gravity")
			player.mouse_mode = Input.MOUSE_MODE_CAPTURED  # Capture mouse again

func grab(hand):
	
