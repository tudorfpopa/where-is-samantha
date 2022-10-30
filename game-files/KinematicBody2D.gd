extends KinematicBody2D

onready var animated_sprite = get_node("AnimatedSprite")
var speed : float = 200.0
var direction = Vector2.ZERO

func _ready():
	pass 
	
func _process(_delta):
	move_and_slide(direction*speed)
	direction = direction.normalized()
	match(direction):
		Vector2.ZERO : 
			animated_sprite.stop()
			animated_sprite.set_frame(0)
		Vector2.UP :
			animated_sprite.play("Walk up")
		Vector2.DOWN:
			animated_sprite.play("Walk down")
		Vector2.RIGHT : 
			animated_sprite.play("Walk right")
		Vector2.LEFT:
			animated_sprite.play("Walk left")

func _input(_event):
	direction.x = int(Input.is_action_pressed("ui_right")) - int(Input.is_action_pressed("ui_left"))	
	direction.y = int(Input.is_action_pressed("ui_down")) - int(Input.is_action_pressed("ui_up"))

