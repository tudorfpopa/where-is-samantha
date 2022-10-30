extends Node2D

const LevelScene = preload("res://Levels/Level.tscn")

func _process(delta):
	if Input.is_action_just_pressed("ui_accept"):
		$TransitionScreen.transition()

func _on_TransitionScreen_Transitioned():
	$CurrentScene.get_child(0).queue_free()
	$CurrentScene.add_child(LevelScene.instance())
	print("swapped in level")
