extends Node2D

func _ready():
	if Game.connect_welcome == true:
		DialogueManager.show_dialogue_balloon(load("res://dialogue/npc.dialogue"),'helper')
