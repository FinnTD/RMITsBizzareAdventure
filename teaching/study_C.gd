extends Node2D

func _ready():
	DialogueManager.show_dialogue_balloon(load("res://dialogue/study.dialogue"),'study_C')
