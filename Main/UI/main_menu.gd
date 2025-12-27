extends CanvasLayer

func _input(event: InputEvent) -> void:
	if event.is_action_pressed("ui_accept"):
		visible = false
		$"../Player".process_mode = Node.PROCESS_MODE_INHERIT
