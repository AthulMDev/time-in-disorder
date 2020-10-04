extends Node2D

onready var dialog = $"player/dialog system"

func _on_dialogue_area_entered(area):
	dialog.show()
	dialog.dialogue = [
		'',
		'time status = looping',
		'YOU: wait WHAT!',
		'Time Watch:Oppening guide activating',
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
