extends Control


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	# Pull up task list when player holds tab
	if Input.is_action_pressed("check tasks"):
		# Refresh task list as long as tab is held
		$"Task List/Label".text = str(Tasks.tasks[Stats.day][Stats.time])
		$"Task List".show()
	else:
		$"Task List".hide()
	
	
