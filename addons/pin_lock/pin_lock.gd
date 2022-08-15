extends PanelContainer 

signal entered(correct)
var PIN = "" # Personal Identification Number
export(Array, String) var PINs = [] # "****" = length 4 = 10 000 combinations = 0.03% chance by guessing 3 times

func _ready():
	$GridContainer.get_child(0).group.connect("pressed", self, "_on_ButtonGroup_pressed")
	
func _on_ButtonGroup_pressed(button):
	PIN += button.text
	

func _on_Enter_pressed():
	emit_signal("entered", PIN in PINs)
	_on_Clear_pressed()


func _on_Clear_pressed():
	PIN = ""

