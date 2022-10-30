extends Area2D

var active = false
var done = false


func _ready():
	connect("body_entered", self, '_on_NPC_entered')
	connect("body_exited", self, '_on_NPC_exited')


func _process(_delta):
	if get_node_or_null('DialogNode') == null :
		if done == false and active :
			get_tree().paused = true
			var dialog = Dialogic.start('Intro')
			dialog.pause_mode = Node.PAUSE_MODE_PROCESS
			dialog.connect('timeline_end', self, 'unpause')
			add_child(dialog)
			done = true

func unpause(_timeline_name):
	get_tree().paused = false
	active = false

func _on_NPC_entered(body) :
	if body.name == 'Sheep2':
		active = true
		
func _on_NPC_exited(body):
	if body.name == 'Sheep2':
		active = false
