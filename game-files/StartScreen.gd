extends Node2D

var dialog = Dialogic.start("Start")

func _ready():
	get_tree().paused = false
	add_child(dialog)


