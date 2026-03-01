extends Node2D

const	SPEED = 60

func _process(delta):
	position.x += SPEED * delta
