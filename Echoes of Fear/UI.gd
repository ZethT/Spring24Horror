extends Control


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	$"Task List/Label".text = str(Tasks.tasks[Stats.day][Stats.time])
	if Input.is_action_pressed("check tasks"):
		$"Task List".show()
	else:
		$"Task List".hide()
