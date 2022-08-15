extends PanelContainer

onready var check = $HBoxContainer/VBoxContainer/CheckButton

func _on_PINLock_entered(correct):
	check.pressed = correct


func _on_PasswordLock_entered(correct):
	check.pressed = correct
