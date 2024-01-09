extends TextEdit
@onready var color_rect = $".."

func _process(delta):
	self.text = "Your score is: "+ str(Game.TestScore) + "/16"
	if Game.showResult == true:
		color_rect.visible = true
	if Game.TestLesson == 0 or Game.TestLesson ==16:
		Game.showResult = false
		color_rect.visible = false

func _on_button_pressed():
	Game.TestScore = 0
	get_tree().change_scene_to_file("res://Scence/return_study.tscn")
