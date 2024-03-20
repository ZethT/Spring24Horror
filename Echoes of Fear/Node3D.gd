extends RigidBody3D

# Variables
var originalPosition: Vector3
var isMoving: bool = false
var moveSpeed: float = 5.0

func _ready():
	# Store the original position of the window
	originalPosition = position

func _input(event: InputEvent):
	if event is InputEventKey:
		var keyEvent = event as InputEventKey
		if keyEvent.scancode == KEY_O and keyEvent.pressed:
			# Player pressed the "O" key
			# Player clicked the window
			isMoving = true
			# Disable gravity temporarily (optional)
			gravity_scale = 0.0

func _process(delta: float):
	if isMoving:
		# Move the window upwards
		position.y += moveSpeed * delta
		# Add any additional logic here (e.g., limit the movement, play sound, etc.)

func _unhandled_input(event: InputEvent):
	if event is InputEventKey:
		var keyEvent = event as InputEventKey
		if keyEvent.scancode == KEY_O and !keyEvent.pressed:
			# Player released the "O" key
			isMoving = false
			# Restore gravity (optional)
			gravity_scale = 1.0
			# Reset the window position
			position = originalPosition
