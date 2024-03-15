extends Node

var day_1 = [
	["eat", "feed cat", "pick clothes", "take backpack"],
	["take notes", "eat"],
	["homework", "eat", "feed cat", "pick clothes"]]
var day_2 = [
	["eat", "feed cat", "pick clothes", "take backpack"],
	[],
	[]]
var day_3 = [
	["eat", "feed cat", "pick clothes", "take backpack"],
	[],
	[]]
var day_4 = [
	["eat", "feed cat", "pick clothes", "take backpack"],
	[],
	[]]
var day_5 = [
	["eat", "feed cat", "pick clothes", "take backpack"],
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

