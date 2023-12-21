extends Node2D

func _ready():
	DialogueManager.show_dialogue_balloon(load("res://dialogue/game_dialogue.dialogue"),'html')


func _on_button_pressed():
	if Game.HtmlLesson <3:
		Game.HtmlLesson += 1
	DialogueManager.show_dialogue_balloon(load("res://dialogue/game_dialogue.dialogue"),'html')
