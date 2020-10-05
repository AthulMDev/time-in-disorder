extends Area2D

const graphicloader = preload("res://timestareffect.tscn")
var graphicinstancer = graphicloader.instance()
onready var collect_voice = $AudioStreamPlayer

func _ready():	show()

func graphic_expresser():
	var currentlevel = get_tree().current_scene
	currentlevel.add_child(graphicinstancer)
	graphicinstancer.global_position = global_position

func _on_timestar_body_entered(body):
	hide()
	graphic_expresser()
	Globals.timestars += 1
	collect_voice.play()
	graphicinstancer.connect("animation_finished", self, "graphic_finished")

func graphic_finished():
	var _n = get_tree().change_scene("res://lv"+str(Globals.timestars)+".tscn")
