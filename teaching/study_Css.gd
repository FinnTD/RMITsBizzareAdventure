extends Node2D

func _ready():
	DialogueManager.show_dialogue_balloon(load("res://dialogue/study_Css.dialogue"),'study_Css')
