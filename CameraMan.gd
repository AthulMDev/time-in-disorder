extends Camera2D

onready var player = get_parent().get_node("player")

func _physics_process(_delta):
	self.set_position(player.get_position())
