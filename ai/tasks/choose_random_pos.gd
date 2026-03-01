extends BTAction

func _tick(delta: float) -> Status:
	# logic
	var pos: Vector2 = agent.global_position
	pos += Vector2(
		randf_range(-1.0, 1.0), # random x offset 
		randf_range(-1.0, 1.0) # random y offset
	)
	blackboard.set_var("pos", pos)
		
	return SUCCESS
