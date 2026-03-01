extends CharacterBody2D

const SPEED = 100.0
@onready var sprite_2d: Sprite2D = $Sprite2D

func move(target_pos: Vector2, delta: float):
	var direction = (target_pos - global_position).normalized()
	velocity = direction * SPEED

	update_flip(direction.x)

func update_flip(dir: float):
	sprite_2d.flip_h = dir < 0

func _physics_process(delta: float) -> void:
	move_and_slide()
