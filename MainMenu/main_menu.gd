extends Control

func _ready():
	# Access the Global Autoload by its name
	LogoOverlay.show_logo()
	
func _on_start_button_pressed():
	# This will eventually lead to your first playable level
	get_tree().change_scene_to_file("res://HospitalScene/hospital_room.tscn")

func _on_exit_button_pressed():
	# Closes the game
	get_tree().quit()
