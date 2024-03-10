extends Label

func _process(_delta):
	text = "Has virtual keyboard: " + str(OS.has_virtual_keyboard()) + " | Keyboard height: " + str(OS.get_virtual_keyboard_height())
