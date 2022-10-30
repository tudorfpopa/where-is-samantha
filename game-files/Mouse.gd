extends KinematicBody2D

onready var animated_sprite = get_node("AnimatedSprite") 
var speed = 35
var direction = Vector2.UP

func _process(delta):
	move_and_slide(direction*speed)
	direction = direction.normalized()
	animated_sprite.play("go up")
	
func _input(event):
	if Input.is_action_pressed("ui_up"):
		speed = 90
	else :
		speed = 55

