extends Control

signal start_game()
@onready var button_vbox = %buttonVbox

func _ready() ->void:
	focus_button()

func _on_start_button_pressed() -> void:
	get_tree().change_scene_to_file("res://character_select.tscn")
	hide()
	
func _on_quit_button_pressed() -> void:
	get_tree().quit()

func _on_visibility_changed() -> void:
	if visible:
		focus_button()


func focus_button()-> void:
	if button_vbox:
		var button: Button = button_vbox.get_child(0)
		if button is Button:
			button.grab_focus()



