extends CanvasLayer

func _ready():
	# Start hidden by default so it doesn't ruin the Splash Screen
	hide_logo()

func show_logo():
	self.visible = true

func hide_logo():
	self.visible = false
