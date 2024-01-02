extends Node2D

func _process(_delta):
	match Game.PlayerSelect:
		0:
			get_node("PlayerSelect").play("PlayerBlue")
			get_node("Description").text = "Gender: Female \nHair color: Purple"
		1:
			get_node("PlayerSelect").play("PlayerOrange")
			get_node("Description").text = "Gender: Male \nHair color: Orange"
		2:
			get_node("PlayerSelect").play("PlayerPink")
			get_node("Description").text = "Gender: Female \nHair color: Pink"
func _on_left_pressed():
	if Game.PlayerSelect >0:
		Game.PlayerSelect -= 1


func _on_right_pressed():
	if Game.PlayerSelect <2:
		Game.PlayerSelect += 1


func _on_select_pressed():
	get_tree().change_scene_to_file("res://Scence/rmit_outside_map.tscn")
