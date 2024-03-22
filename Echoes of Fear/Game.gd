extends Node3D

@export var home : PackedScene
@export var school : PackedScene

var current_scene

# Called when the node enters the scene tree for the first time.
func _ready():
	current_scene = home.instantiate()
	add_child(current_scene)


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	get_tree().call_group("cat", "update_target_location", $Elena.global_transform.origin)

func next_scene():
	print("check!")
	Stats.time += 1
	if Stats.time == 3:
		Stats.time = 0
		Stats.day += 1
	current_scene.queue_free()
	remove_child(current_scene)
	if Stats.time == 1:
		current_scene = school.instantiate()
	else:
		current_scene = home.instantiate()
	add_child(current_scene)
