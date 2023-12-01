extends Sprite2D

var player_walk = {
	0: preload("res://Art/Character/Student/Walking/Blue_Head_Walking-Sheet.png"),
	1: preload("res://Art/Character/Student/Walking/Orange_Head_Walking-Sheet.png"),
	2: preload("res://Art/Character/Student/Walking/Pink_Head_Walking-Sheet.png")
}

func _ready():
	self.texture = player_walk[Game.PlayerSelect]
