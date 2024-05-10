extends StaticBody3D

const TIME = 3

func interact(held_item):
	# Called when the player interacts with this object
	if !held_item:
		self.visible = false
		queue_free()
