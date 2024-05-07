extends Node3D

const TIME = 100

func _process(_delta):
	if Input.is_action_just_pressed("interact"):
		visible = false
