extends Control

# Drag and drop your "No Drip" image into this slot in the Inspector
@export var image_no_drip: Texture2D
@onready var background = $ColorRect/TextureRect # Make sure this matches your TextureRect name
@onready var palm_view = $PalmView # Reference to our new overlay
func _on_needle_button_pressed():
	# 1. Swap the image
	background.texture = image_no_drip
	
	# 2. Disable the button so they can't "remove" it again
	$ColorRect/TextureRect/TextureButton.hide()
	
	# 3. Add some narrative feedback
	print("Julian: I... I need to get out of here. This needle was stinging.")

func _on_texture_button_pressed() -> void:
	pass # Replace with function body.

func _on_palm_button_pressed():
	palm_view.show() # This brings the palm close-up to the front
	print("Julian looks closely at the ink on his hand...")

func _on_back_button_pressed():
	palm_view.hide() # This reveals the hospital room again
