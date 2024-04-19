extends Node3D

var assignmentafter : Node3D

func _ready():
	# Assuming object_B is assigned in the Inspector or obtained via code
	pass

func _process(_delta):
	if Input.is_action_just_pressed("finishhomework"):
		# Toggle visibility of object A and object B
		self.visible = false
