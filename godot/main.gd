extends CenterContainer

onready var has_virtual_keyboard = OS.has_virtual_keyboard()

func _input(event):
	if !has_virtual_keyboard || !(event is InputEventMouseButton) || !event.is_pressed():
		return

	if OS.get_virtual_keyboard_height() > 0:
		OS.hide_virtual_keyboard()
	else:
		OS.show_virtual_keyboard()
