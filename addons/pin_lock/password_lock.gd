extends PanelContainer

signal entered(correct)
onready var password = $VBoxContainer/Password
export(Array, String) var passwords = [] 

func _ready():
	$VBoxContainer/GridContainer.get_child(0).group.connect("pressed", self, "_on_ButtonGroup_pressed")
	
func _on_ButtonGroup_pressed(button):
	password.text += button.text
	

func _on_Enter_pressed():
	emit_signal("entered", password.text in passwords)
	_on_Clear_pressed()


func _on_Clear_pressed():
	password.text = ""

