extends CharacterBody2D

const JUMP_VELOCITY = -50

func _physics_process(delta: float) -> void:
	# Add the gravity.
	if not is_on_floor():
		velocity += get_gravity() * delta
		
		#start sequence ...
	if position <= Vector2(192, 0): 
		velocity.x = 400
	else: 
		velocity.x = 0
		Manager.start = true
		
		

	# Handle jump.
	if Input.is_action_pressed("ui_accept") and velocity.y > -500:
		velocity.y += JUMP_VELOCITY
	move_and_slide()



func _on_hitbox_interact(area: Area2D) -> void:
	if area.is_in_group("Death"):
		print("daed")
