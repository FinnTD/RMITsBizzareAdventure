extends Control

signal start_game()
@onready var buttonscon = %ButtonsContainer

func _ready()->void:
	focus_button()


func _on_start_pressed()->void:
	start_game.emit()
	hide()


func _on_quit_pressed() -> void:
	get_tree().quit()


func _on_visiblity_change() -> void:
	if visible:
		focus_button()
	
		
func focus_button() -> void:
	if buttonscon:
		var button:Button = buttonscon.get_child(0)
		if button is Button:
			button.grab_focus()
