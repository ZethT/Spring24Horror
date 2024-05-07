extends MeshInstance3D

const TIME = 3
	
func interact(held_item):
	# Called when the player interacts with this object
	if !held_item:
		Node3D.visible=false
