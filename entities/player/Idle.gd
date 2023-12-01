extends Sprite2D

var player_idles = {
	0: preload("res://Art/Character/Student/Idle/Blue_Head_Idle-Sheet.png"),
	1: preload("res://Art/Character/Student/Idle/Orange_Head_Idle-Sheet.png"),
	2: preload("res://Art/Character/Student/Idle/Pink_Head_Idle-Sheet.png")
}

func _ready():
	self.texture = player_idles[Game.PlayerSelect]
