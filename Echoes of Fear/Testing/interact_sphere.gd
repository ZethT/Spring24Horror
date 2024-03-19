extends StaticBody3D

const TIME = 3

func interact(held_item):
	Tasks.update_tasks("pick clothes")
	queue_free()
