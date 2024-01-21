extends Node2D

func _ready():
	if Game.guard_welcome == true:
		DialogueManager.show_dialogue_balloon(load("res://dialogue/npc.dialogue"),'guard')
