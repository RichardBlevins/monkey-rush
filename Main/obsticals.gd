extends Timer


func _on_timeout() -> void:
	if wait_time > 2:
		wait_time -= 0.01
		
