extends Node2D

@export var thorns_scene: PackedScene

func _on_obsticals_timeout() -> void:
	var thorns = thorns_scene.instantiate()
	
	thorns.position = Vector2(randi_range(1200, 2300), randi_range(550, 100))
	
	add_child(thorns)

func _process(delta: float) -> void:
	var children = get_children()
	
	for child in children:
		var groups = child.get_groups()
		
		for group in groups:
			match group:
				"Thorns":
					child.position.x -= 6.6666667 + Manager.BGSpeed
					
					
					

func _on_timer_score() -> void:
	Manager.score += 1
