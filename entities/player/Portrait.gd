extends TextureRect
var html = {
	0: preload("res://Art/Character/portrait/keqing.png"),
	1: preload("res://Art/Character/portrait/aether.png"),
	2: preload("res://Art/Character/portrait/rosaria.png")
}

func _process(delta):
	self.texture = html[Game.PlayerSelect]
	

