extends Node3D


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


func _on_area_3d_body_entered(body):
	if body.get_name() == "Elena" and Stats.time == 0:
		self.get_parent().next_scene()
