extends AnimatedSprite

func _ready():
	connect("animation_finished", self, "_finished")
	play("default")


func _finished():
	queue_free()
