extends Parallax2D

var AddedSpeed = Vector2.ZERO
var OneStart = false

func _on_timer_timeout() -> void:
	$Img0006.visible = false
	
func _process(delta: float) -> void:
	AddedSpeed.x = Manager.score
	if Manager.start == true:
		autoscroll = Vector2(-400, 0) - AddedSpeed
		if OneStart == false:
			$Timer.start()
			$ScoreTimer.start()
			OneStart = !OneStart
		

func _on_timer_score() -> void:
	Manager.score += 1
