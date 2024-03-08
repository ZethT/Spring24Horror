extends StaticBody3D


func interact(held_item):
	Tasks.update_tasks("pick clothes")
	queue_free()
