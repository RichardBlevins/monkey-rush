extends CanvasLayer


func _process(delta: float) -> void:
	$Label.text = str(Manager.score) 
