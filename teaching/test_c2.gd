extends Node2D

func _ready():
	DialogueManager.show_dialogue_balloon(load("res://dialogue/test_c.dialogue"),'test_c')
