extends Node3D

var isReplaced = false

func _ready():
	pass

func _process(delta):
	pass

func _on_assignment_before_finish_homework():
	if not isReplaced:
		isReplaced = true
		print("Assignment (before) has been replaced with Assignment (after).")
		# ここにAssignment (after) に関連する任意の追加のコードを追加できます
