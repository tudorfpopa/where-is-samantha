extends KinematicBody2D


var speed = 200
var direction = Vector2.LEFT

func _process(_delta):
	move_and_slide(direction*speed)
	direction = direction.normalized()
