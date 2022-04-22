extends PanelContainer

var ans = 0.0
var expression = Expression.new()

onready var line_edit = $VBoxContainer/LineEdit

func _ready():
	$VBoxContainer/GridContainer.get_child(0).group.connect("pressed", self, "_on_CharButton_pressed")
	
func _on_CharButton_pressed(button):
	line_edit.text += button.text
	
func _on_LineEdit_text_entered(new_text):  
	var error = expression.parse(new_text, ["ANS"])
	if error != OK:
		line_edit.text = expression.get_error_text()
		return
		
	var result = expression.execute([ans])
	if not expression.has_execute_failed():
		ans = result
		line_edit.text = str(result)

func _on_Evaluate_pressed():
	_on_LineEdit_text_entered(line_edit.text)
