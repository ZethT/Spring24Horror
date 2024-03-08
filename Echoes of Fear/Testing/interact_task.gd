extends StaticBody3D

var locked = false
# locked must change to true when task is finished

func interact(held_item):
	if not locked and held_item:
		if held_item.get_name() == "grabbing capsule":
			Tasks.update_tasks("feed cat")
			held_item.queue_free()
			queue_free()
		else:
			#send message to player saying they need cat food
			print("Get cat food first!")


