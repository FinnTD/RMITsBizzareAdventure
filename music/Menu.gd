extends Node2D
@onready var  MusicBudId = AudioServer.get_bus_index('Music')
@onready var menu = $Menu


func _input(event):
	if event.is_action_pressed("ui_cancel"):
		menu.visible = !menu.visible



func _on_music_slider_value_changed(value):
	AudioServer.set_bus_volume_db(MusicBudId,linear_to_db(value))
	AudioServer.set_bus_mute(MusicBudId,value < .05)



func _on_button_pressed():
	get_tree().change_scene_to_file("res://main_menu/main_menu.tscn")
