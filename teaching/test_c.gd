extends TextureRect
var test = {
	0: preload("res://Art/Other/Study/test_c/ts0.png"),
	1: preload("res://Art/Other/Study/test_c/ts1.png"),
	2: preload("res://Art/Other/Study/test_c/ts2.png"),
	3: preload("res://Art/Other/Study/test_c/ts3.png"),
	4: preload("res://Art/Other/Study/test_c/ts4.png"),
	5: preload("res://Art/Other/Study/test_c/ts5.png"),
	6: preload("res://Art/Other/Study/test_c/ts6.png"),
	7: preload("res://Art/Other/Study/test_c/ts7.png"),
	8: preload("res://Art/Other/Study/test_c/ts8.png"),
	9: preload("res://Art/Other/Study/test_c/ts9.png"),
	10: preload("res://Art/Other/Study/test_c/ts10.png"),
	11: preload("res://Art/Other/Study/test_c/ts11.png"),
	12: preload("res://Art/Other/Study/test_c/ts12.png"),
	13: preload("res://Art/Other/Study/test_c/ts13.png"),
	14: preload("res://Art/Other/Study/test_c/ts14.png"),
	15: preload("res://Art/Other/Study/test_c/ts15.png"),
	16: preload("res://Art/Other/Study/test_c/ts16.png"),
	17: preload("res://Art/Other/Study/test_c/ts17.png"),
	18: preload("res://Art/Other/Study/test_c/ts18.png"),
	19: preload("res://Art/Other/Study/test_c/ts19.png"),
	20: preload("res://Art/Other/Study/test_c/ts20.png"),
	21: preload("res://Art/Other/Study/test_c/ts21.png"),
	22: preload("res://Art/Other/Study/test_c/ts22.png"),
	23: preload("res://Art/Other/Study/test_c/ts23.png"),
	24: preload("res://Art/Other/Study/test_c/ts24.png"),
	25: preload("res://Art/Other/Study/test_c/ts25.png"),
	26: preload("res://Art/Other/Study/test_c/ts26.png"),
	27: preload("res://Art/Other/Study/test_c/ts27.png"),
	28: preload("res://Art/Other/Study/test_c/ts28.png"),
	29: preload("res://Art/Other/Study/test_c/ts29.png"),
	30: preload("res://Art/Other/Study/test_c/ts30.png"),
	31: preload("res://Art/Other/Study/test_c/ts31.png"),
}
func _process(delta):
	self.texture = test[Game.TestLesson]
