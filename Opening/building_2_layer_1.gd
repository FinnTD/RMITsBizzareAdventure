extends Node2D
func _ready():
	if Game.anna_welcome == true:
		DialogueManager.show_dialogue_balloon(load("res://dialogue/npc.dialogue"),'anna')
