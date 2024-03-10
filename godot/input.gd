extends Label

func _input(event):
	if !(event is InputEventKey) || !event.is_pressed():
		return
	
	var scancode = event.physical_scancode
	if !scancode: scancode = event.scancode
	
	text += OS.get_scancode_string(OS.keyboard_get_scancode_from_physical(scancode))
