extends Node3D

signal finishhomework

func _ready():
	pass

func _process(delta):
	if Input.is_action_just_pressed("finishhomework"):
		emit_signal("finishhomework")
