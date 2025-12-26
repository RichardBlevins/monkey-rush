extends CharacterBody2D

const JUMP_VELOCITY = -50

func _physics_process(delta: float) -> void:
	# Add the gravity.
	if not is_on_floor():
		velocity += get_gravity() * delta
	if position <= Vector2(192, 0): 
		velocity.x += 1 
	else: 
		velocity.x = 0 
		


	# Handle jump.
	if Input.is_action_pressed("ui_accept") and velocity.y > -500:
		velocity.y += JUMP_VELOCITY


	move_and_slide()
