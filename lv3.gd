extends Node2D

onready var dialog = $"CameraMan/dialogue system"

func _ready():
	dialog.dialogue = [
	'You: You Said There Is a Time Star In This Cave But Where?',
	'Exa: Its Somewhere In This Cave',
	'The Last One Is Nearby After That You can go back!',
	'So Hurry!'
	]
	dialog.load_dialog()
	dialog.show()
