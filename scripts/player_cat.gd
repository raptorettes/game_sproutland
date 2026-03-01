extends CharacterBody2D

@export var move_speed: float = 100

func _physics_process(delta: float) -> void:
	# Get direction
	var input_direction = Vector2(
		Input.get_axis("ui_left", "ui_right"),
		Input.get_axis("ui_up", "ui_down")
	)
		
	#print(input_direction)
	
	# Update velocity
	velocity = input_direction * move_speed
	
	var hAxis = Input.get_axis("ui_left", "ui_right")
	var vAxis = Input.get_axis("ui_down", "ui_up")
	
	if hAxis > 0.25:
		%IdleTimer.start(5)
		%AnimatedSprite2D.play("walk_right")

	if hAxis < -0.25:
		%IdleTimer.start(5)
		%AnimatedSprite2D.play("walk_left")

	if vAxis > 0.25:
		%IdleTimer.start(5)
		%AnimatedSprite2D.play("walk_up")
	
	if vAxis < -0.25:
		%IdleTimer.start(5)
		%AnimatedSprite2D.play("walk_down")
	
	if (hAxis > -0.25 and hAxis < 0.25) and (vAxis > -0.25 and vAxis < 0.25) and %IdleTimer.wait_time > 1:
		%AnimatedSprite2D.stop()
	

	move_and_slide()


func _on_idle_timer_timeout() -> void:
	%AnimatedSprite2D.play("idle")
