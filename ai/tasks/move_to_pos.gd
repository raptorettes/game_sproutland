extends BTAction

func _tick(delta: float) -> Status:
	var target_pos: Vector2 = blackboard.get_var("pos")
	var current_pos: Vector2 = agent.global_position
	
	agent.move(target_pos, delta)
	
	return RUNNING
