extends Node2D

onready var dialog = $"CameraMan/dialogue system"

func _ready():
	dialog.dialogue = [
		'Error, Showing Time Status',
		'time status = looping(terrible)',
		'YOU: wait WHAT!',
		'Time Watch:Opening guide activating',
		'Hello I am exa time watch ai',
		'Exa:I am here to help you with your',
		'Problems your Watch has Mulfuntioned!',
		'To Fix it find 5 time stars',
		'Also Your Now stuck in the 15 second',
		'timeline you will come back to a louran',
		'(the thing you are standing on)',
		'Every 15 Seconds',
		'Game:To Move Use Right and Left to',
		'Jump Use Space',
		'Dont Forget the slippery Slopes'
	]
	dialog.load_dialog()
	dialog.show()
