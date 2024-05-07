extends Control

@onready var Select = $Select

func _on_start_pressed():
	get_tree().change_scene_to_file("res://Game.tscn")
	Select.play()

func _on_options_pressed():
	pass # Replace with function body.
	Select.play()


func _on_exit_pressed():
	get_tree().quit()
	Select.play()
