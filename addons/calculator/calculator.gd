extends PanelContainer

var ans = 0.0

onready var line_edit = $VBoxContainer/LineEdit
onready var expression = Expression.new()

func _ready():
	get_tree().call_group("char_button", "connect", "char_pressed", self, "_on_CharButton_pressed")

func _on_CharButton_pressed(character):
	line_edit.text += character
	
func _on_LineEdit_text_entered(new_text):  
	var error = expression.parse(new_text, ["ANS"])
	if error != OK:
		line_edit.text = expression.get_error_text()
		return
		
	var result = expression.execute([ans])
	if not expression.has_execute_failed():
		ans = result
		line_edit.text = str(ans)

func _on_Evaluate_pressed():
	_on_LineEdit_text_entered(line_edit.text)

