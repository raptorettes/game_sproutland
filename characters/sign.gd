extends StaticBody2D

signal read_sign

var interactable: bool = false

func _input(event: InputEvent) -> void:
	if event.is_action("ui_select") and interactable:
		%Label.text = "Done"
		$ReadTimer.start()

func _on_area_2d_body_entered(body: Node2D) -> void:
	if body.name == "PlayerCat":
		interactable = true
		%Label.text = "Press " + InputMap.get_action_description("ui_select") + " to READ"


func _on_area_2d_body_exited(body: Node2D) -> void:
	%Label.text = ""
	interactable = false


func _on_read_timer_timeout() -> void:
	emit_signal("read_sign")
