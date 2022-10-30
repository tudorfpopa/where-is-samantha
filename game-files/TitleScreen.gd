extends Node2D


var active = true

func _input(event):
	if get_node_or_null('DialogNode') == null :
		if event.is_action_pressed("ui_accept") and active :
			get_tree().paused = true
			var dialog = Dialogic.start('Intro')
			dialog.pause_mode = Node.PAUSE_MODE_PROCESS
			dialog.connect('timeline_end', self, 'unpause')
			add_child(dialog)
			
func unpause(_timeline_name):
	get_tree().paused = false
	active = false
# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.



