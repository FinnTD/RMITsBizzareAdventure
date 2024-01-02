extends ProgressBar

@export var player: Game

func _process(_delta):
	update()
	

func update():
	if  Game.currentHealth <= 0:
		Game.currentHealth =0
	if  Game.currentHealth >= Game.MaxHealth:
		Game.currentHealth = Game.MaxHealth
		
	if 	Game.currentHealth>=0 and Game.currentHealth<=20:
		self.modulate = Color(0, 0, 1)
	if 	Game.currentHealth>=30 and Game.currentHealth<=40:
		self.modulate = Color(0, 1, 0)
	if 	Game.currentHealth>=50 and Game.currentHealth<=60:
		self.modulate = Color(1, 0, 0)
	value = float(Game.currentHealth) * 100 / Game.MaxHealth
	self.value = value

