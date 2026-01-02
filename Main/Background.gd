extends Parallax2D


var AddedSpeed = Vector2.ZERO
var OneStart = false

func _on_timer_timeout() -> void:
	$Img0006.visible = false
	
func _process(delta: float) -> void:
	Manager.BGSpeed = AddedSpeed.x/60
	AddedSpeed.x = Manager.score
	if Manager.start == true && Manager.score < 400:
		autoscroll = Vector2(-400, 0) - AddedSpeed
		if OneStart == false:
			$StartTimer.start()
			$ScoreTimer.start()
			$Obsticals.start()
			OneStart = !OneStart 
		


	
