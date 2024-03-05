extends StaticBody3D

var locked = false
# locked must change to true when task is finished

func interact(held_item):
	if not locked:
		if held_item == "cat food":
			Tasks.feed_cat()
			Tasks.update_tasks("feed_cat")
			# get rid of held item
		else:
			#send message to player saying they need cat food
			pass


