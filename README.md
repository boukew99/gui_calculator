# GUI Calculator ![icon](https://raw.githubusercontent.com/boukew99/gui_calculator/main/addons/calculator/icon.png)
An extendable calculator in [Godot Engine](https://godotengine.org) that can be used with mouse or by typing.

![loc](https://img.shields.io/tokei/lines/github/boukew99/gui_calculator) ![size](https://img.shields.io/github/repo-size/boukew99/gui_calculator) 

![screenshot](https://raw.githubusercontent.com/boukew99/gui_calculator/main/screenshot/Screenshot%202022-02-28%20130917.png)

## Usage
All the buttons (except evaluation button) have a ButtonGroup. The ButtonGroup is used to get the character of the pressed button. This is added to the LineEdit string, which you can also alter by typing. This string is evaluated by the [Expression](https://docs.godotengine.org/en/stable/classes/class_expression.html?highlight=expression) Class, which supports most [functions GDscript supports](https://docs.godotengine.org/en/stable/classes/class_%40gdscript.html). Thus more inputs can be added to the GUI, which already are accesible by typing (ex. sin() ). But the current GUI consist out of the basic numbers [operators](https://docs.godotengine.org/en/stable/tutorials/scripting/gdscript/gdscript_basics.html#operators) which don't require brackets.


## Editing GUI
Edit it by setting the text of a button to something evaluateable. Or add a new button with the same ButtonGroup (ex. by duplicating). 

## License
[MIT](LICENSE)

## Contributing
Leave a issue if there is one.
