extends KinematicBody2D

var velocity = Vector2.ZERO
export var jump_height = -10
export var speed = 100

func _physics_process(_delta):
	var input_vector = Vector2.ZERO
	var right = Input.get_action_strength("ui_right")
	var left = Input.get_action_strength("ui_left")
	input_vector.x = right - left
	input_vector = input_vector.normalized()
	if Input.is_action_just_pressed("ui_up"):
		input_vector.y = jump_height
	velocity = input_vector
	velocity = move_and_slide(velocity * speed)

