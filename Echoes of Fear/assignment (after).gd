extends Node3D

var assignmentbefore : Node3D

func _ready():
	# Assuming object_A is assigned in the Inspector or obtained via code
	self.visible = false

func _process(_delta):
	if Input.is_action_just_pressed("finishhomework"):
		# Toggle visibility of object B and object A
		self.visible = true
