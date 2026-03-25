# always close and start the scene if the tool script is not working 
@tool
extends Node2D

@onready var player = $GDPlayer

func _ready() -> void:
	randomize()

func _physics_process(_delta: float) -> void:
	if (Engine.is_editor_hint()):
		#player.global_position.x += delta*10
		pass
	
	else:
		print(Engine.is_editor_hint())
		
		
	if (Engine.is_editor_hint()):
		if Input.is_action_just_pressed("ui_focus_next"):
			print("Tab pressed")
			
			var new_sprite = Sprite2D.new()
			new_sprite.texture = preload("res://icon.svg")
			
			new_sprite.global_position.x = randi() % 1000
			new_sprite.global_position.y = randi() % 1000
			
			add_child(new_sprite)
			new_sprite.owner = get_tree().edited_scene_root
	else:
		pass














# for editor script --> it gives a run function, and can be used to manipulate any selected scene
@tool
extends EditorScript

func _run() -> void:
	var current_scene = get_scene()
	print(current_scene)


# only runs in the editor window and when the editor is selected









@tool
extends Node2D

@export var tex: String = "Hi":
	set(value):
		tex = value
		_update_label()

func _ready():
	_update_label()

func _enter_tree():
	_update_label()

func _update_label():
	var label = get_node_or_null("textLabelExp")
	if label:
		label.text = tex

# https://www.youtube.com/watch?v=UWqDETDjn_k

































