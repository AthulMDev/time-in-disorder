extends Control

export var dialogue = [
	'Time Watch:error error opening ',
	'testin',
	'are ya workin',
]

var dialogue_index = 0
var finished = false
onready var label = $RichTextLabel
onready var tween = $Tween
onready var sprite = $Sprite

func _ready():
	load_dialog()

func _process(_delta):
	sprite.visible = finished
	if Input.is_action_just_pressed("ui_accept"):
		load_dialog()

func load_dialog():
	if dialogue_index < dialogue.size():
		finished = false
		label.bbcode_text = dialogue[dialogue_index]
		dialogue_index += 1
		label.percent_visible = 0
		tween.interpolate_property(
			label, "percent_visible", 0, 1, 1, tween.TRANS_LINEAR, tween.EASE_IN_OUT
		)
		tween.start()
	else:
		queue_free()


func _on_Tween_tween_completed(object, key):
	finished = true
