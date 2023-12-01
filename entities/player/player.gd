extends CharacterBody2D

var direction: Vector2 = Vector2.ZERO
var speed: float = 75.0

func _physics_process(delta):
	var velocity = direction.normalized() * speed
	var collision_info = move_and_collide(velocity * delta)

func _process(delta):
	direction = Vector2.ZERO
	if Input.is_action_pressed("ui_left") or Input.is_action_pressed("left"):
		direction.x -= 1
	if Input.is_action_pressed("ui_right") or Input.is_action_pressed("right"):
		direction.x += 1
	if Input.is_action_pressed("ui_up") or Input.is_action_pressed("up"):
		direction.y -= 1
	if Input.is_action_pressed("ui_down") or Input.is_action_pressed("down"):
		direction.y += 1
	if direction == Vector2.ZERO:
		$AnimationTree.get("parameters/playback").travel("Idle")
		show_Sprite("Idle")
	else:
		$AnimationTree.get("parameters/playback").travel("Walk")
		show_Sprite("Walk")
		$AnimationTree.set("parameters/Idle/blend_position", direction)
		$AnimationTree.set("parameters/Walk/blend_position", direction)
func show_Sprite(sprite_name):
	get_node("Idle").hide()
	get_node("Walk").hide()
	match sprite_name:
		"Idle":
			get_node("Idle").show()
		"Walk":
			get_node("Walk").show()
