extends Node2D

onready var sprite = $Sprite
onready var label = $RichTextLabel
onready var timer = $Timer

func _on_Timer_timeout():
	get_parent().set_position(Globals.checkpoint)
	sprite.frame = 1
	
func _physics_process(_delta):
	sprite.frame = 0
