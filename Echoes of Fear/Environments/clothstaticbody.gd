extends StaticBody3D

const TIME = 3

@onready var takeClothes = $"../../TakeClothes"
	
func interact(held_item):
	# Called when the player interacts with this object
	if !held_item:
		queue_free()
		if is_visible_in_tree():
			print("Node is visible in the tree")
			if not takeClothes.playing:
				takeClothes.play()
		else:
			print("Node is not visible in the tree")
