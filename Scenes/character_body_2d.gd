extends CharacterBody2D

#Defining variable here
const SPEED : int = 300
var gravity : int = 98
var target_velocity: Vector2 = Vector2.ZERO

func _physics_process(delta: float) -> void:
	var x_direction : int = 0
	if Input.is_action_pressed("ui_left"):
		x_direction = -1
	elif Input.is_action_pressed("ui_right"):
		x_direction = 1
	else:
		x_direction = 0
	
	target_velocity.x = x_direction * SPEED
	
	if not is_on_floor():
		target_velocity.y += (gravity * delta)
	print(target_velocity.y)
	
	set_velocity(target_velocity)
	move_and_slide()
