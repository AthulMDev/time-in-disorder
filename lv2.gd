extends Node2D

onready var dialog = $"CameraMan/dialogue system"

func _ready():
	dialog.dialogue = [
		'You: thats hot',
		'Exa: Analizing zone... its a desert',
		'looks like a timestar is close lets find it!'
	]
	dialog.load_dialog()
	dialog.show()
