extends Control

@export var _move_to: PackedScene

var _splashscreens: Array[SplashScreen] = []

@onready var _splashscreencon : CenterContainer = $CenterContainer


func _ready()->void:
	assert(_move_to)
	
	for splash_screen in _splashscreencon.get_children():
		splash_screen.hide()
		_splashscreens.push_back(splash_screen)
		
	
	_start_splash_screen()


func _start_splash_screen()->void:
	if _splashscreens.size()==0:
		get_tree().change_scene_to_packed(_move_to)
	else :
		var splash_screen: SplashScreen = _splashscreens.pop_front()
		splash_screen.start()
		splash_screen.connect("finished", _start_splash_screen)
