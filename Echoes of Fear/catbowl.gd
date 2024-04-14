extends StaticBody3D

const TIME = 2

# locked must change to true when task is finished

func interact(held_item):
	if held_item:
		if held_item.get_name() == "cat_food":
			Tasks.update_tasks("feed cat")
			held_item.queue_free()
			$"../Ghost".update_target_location(global_position)
			$"../Ghost".wander = false
		else:
			#send message to player saying they need cat food
			print("Get cat food first!")
