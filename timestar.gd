extends Area2D

const graphicloader = preload("res://timestareffect.tscn")

func graphic_expresser():
	var graphicinstancer = graphicloader.instance()
	var currentlevel = get_tree().current_scene
	currentlevel.add_child(graphicinstancer)
	graphicinstancer.global_position = global_position

func _on_timestar_body_entered(body):
	graphic_expresser()
	Globals.timestars += 1
	match Globals.timestars:
		1:
			get_tree().change_scene("res://lv2.tscn")
		2:
			get_tree().change_scene("res://lv3.tscn")
		3:
			get_tree().change_scene("res://lv4.tscn")
		4:
			get_tree().change_scene("res://lv5.tscn")
	queue_free()
