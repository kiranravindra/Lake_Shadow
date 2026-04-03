extends Control

@onready var anim_player = $AnimationPlayer

func _ready():
	# Start the fade sequence
	anim_player.play("intro_sequence")
	
	# Connect the signal: when animation finishes, run our function
	anim_player.animation_finished.connect(_on_finished)

func _on_finished(_anim_name):
	# Change this to your actual first level or main menu path
	get_tree().change_scene_to_file("res://MainMenu/main_menu.tscn")
