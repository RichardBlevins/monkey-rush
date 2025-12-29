extends Node2D

@export var thorns_scene: PackedScene

func _on_obsticals_timeout() -> void:
	var thorns = thorns_scene.instantiate()
	
	thorns.position = Vector2(900, 500)
	add_child(thorns)

func _on_timer_score() -> void:
	Manager.score += 1
