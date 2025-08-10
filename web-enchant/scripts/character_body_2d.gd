extends CharacterBody2D

@export var speed = 400
@export var health = 100
@onready var idleanim = $AnimatedSprite2D

#input method
func get_input():
	var direction = Input.get_vector("move_left", "move_right", "move_up", "move_down")
	velocity = direction * speed
	if velocity.x == 0 and velocity.y == 0:
		idleanim.play("idle")	
	else:
		idleanim.pause()
		

	
func _physics_process(delta):
	print(position)
	get_input()
	move_and_slide()
