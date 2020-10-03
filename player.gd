extends KinematicBody2D

var velocity = Vector2.ZERO
const up = Vector2(0, -1)
export var speed = 5 * 96

func _physics_process(_delta):
	
	velocity = move_and_slide(velocity, up)

func input():
	var input_vector = -int(Input.get_action_strength("left")) + int(Input.is_action_just_pressed("right"))
	velocity.x = speed * input_vector
