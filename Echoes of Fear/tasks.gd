extends Node

var day_1 = [
	["pick clothes", "eat", "feed cat"],
	["take notes", "take test"],
	["homework", "order cat food", "pick clothes"]]
var day_2 = [
	[],
	[],
	[]]
var day_3 = [
	[],
	[],
	[]]
var day_4 = [
	[],
	[],
	[]]
var day_5 = [
	[],
	[],
	[]]

var tasks = [day_1, day_2, day_3, day_4, day_5]


func _ready():
	print(tasks[Stats.day][Stats.time])


func update_tasks(task):
	tasks[Stats.day][Stats.time].erase(task)
	print(tasks[Stats.day][Stats.time])


func pick_clothes():
	queue_free()
	# disable other objects with pick_clothes function
	pass


func feed_cat():
	#replace empty food bowl with full food bowl
	#cat walks to bowl and does eating animation
	pass

