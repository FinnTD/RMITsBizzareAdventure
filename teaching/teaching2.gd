extends TextureRect

var html = {
	0: preload("res://Art/Other/Study/html0.png"),
	1: preload("res://Art/Other/Study/html1.png"),
	2: preload("res://Art/Other/Study/html2.png")
}

func _process(delta):
	self.texture = html[Game.HtmlLesson]
