extends Node2D

func _ready():
	DialogueManager.show_dialogue_balloon(load("res://dialogue/study_c.dialogue"),'study_C')
