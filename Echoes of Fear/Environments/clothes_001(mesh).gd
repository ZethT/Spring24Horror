extends Node3D

const TIME = 3
	
func _process(_delta):
	if Input.is_action_just_pressed("interact"):
		visible = false
