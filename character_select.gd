extends Node2D

func _process(_delta):
	match Game.PlayerSelect:
		0:
			get_node("PlayerSelect").play("PlayerBlue")
			get_node("Description").text = "Gender: Female \nCharater name: Keqing \nBackground: Precise and innovative Kequing, a Japanese exchange student,\n elevates games with meticulous detail and cultural richness."
		1:
			get_node("PlayerSelect").play("PlayerOrange")
			get_node("Description").text = "Gender: Male \nCharater name: Aether \nBackground: Ambitious Vietnamese student Aether blends tradition and tech,\n shaping immersive game experiences with cultural flair."
		2:
			get_node("PlayerSelect").play("PlayerPink")
			get_node("Description").text = "Gender: Female \nCharater name: Rosaria \nBackground: Rosaria, a Spanish exchange student, crafts games with\n global narratives, weaving Spanish culture into gameplay."
func _on_left_pressed():
	if Game.PlayerSelect >0:
		Game.PlayerSelect -= 1


func _on_right_pressed():
	if Game.PlayerSelect <2:
		Game.PlayerSelect += 1


func _on_select_pressed():
	get_tree().change_scene_to_file("res://Scence/rmit_outside_map.tscn")
