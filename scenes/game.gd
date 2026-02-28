extends Node2D

func _on_sign_read_sign() -> void:
	$Levels.add_child(preload("res://scenes/level_2.tscn").instantiate())
	$Levels.remove_child($Levels/Level1)
	#tree.change_scene_to_file("res://scenes/level_2.tscn")
