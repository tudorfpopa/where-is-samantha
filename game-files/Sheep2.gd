extends KinematicBody2D

onready var animated_sprite = get_node("AnimatedSprite")
var direction = Vector2.LEFT
var speed = 65

func _process(_delta):
	move_and_slide(direction*speed)
	direction = direction.normalized()
	animated_sprite.play("go right")
