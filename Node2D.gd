extends Node2D

onready var sprite = $Sprite
onready var timer = $Timer
onready var Progress = $"time left"
onready var travel_sound = $AudioStreamPlayer

func _on_Timer_timeout():
	get_parent().set_position(Globals.checkpoint)
	travel_sound.play()

func _physics_process(_delta):
	Progress.value = timer.time_left/timer.wait_time * 100
