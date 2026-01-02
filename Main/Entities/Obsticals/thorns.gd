extends Area2D

func _ready() -> void:
	$CollisionShape2D.scale.x = randi_range(128, 256)
	$MeshInstance2D.scale.x = $CollisionShape2D.scale.x
	rotation_degrees = randi_range(0, 3) * 45
	print(rotation)

func _on_visible_on_screen_notifier_2d_screen_exited() -> void:
	await get_tree().create_timer(1.0).timeout
	queue_free()
