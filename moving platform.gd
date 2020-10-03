extends Node2D

onready var platform = $KinematicBody2D
onready var tween = $Tween
const idle_duration = 1.0
export var move_to = Vector2.UP * 192 
export var speed = 3.0

func _ready():
	_init_tween()

func _init_tween():
	var duration = move_to.length() / float(speed * 16)
	tween.interpolate_property(platform, "position", Vector2.ZERO, move_to, duration, Tween.TRANS_LINEAR, Tween.EASE_IN_OUT, idle_duration) 
	tween.interpolate_property(platform, "position", move_to, Vector2.ZERO, duration, Tween.TRANS_LINEAR, Tween.EASE_IN_OUT, duration + idle_duration) 
	tween.start()
