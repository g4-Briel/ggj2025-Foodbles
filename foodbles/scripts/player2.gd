extends CharacterBody2D

@export var speed = 200.0
@export var rotation_speed = 0.05
var can_load = false
var loading = false

func _ready():
	pass

func _physics_process(delta):
	rotation -= rotation_speed * (Input.get_action_strength("ui_left") - Input.get_action_strength("ui_right"))
	var direction = Vector2.UP.rotated(rotation)  # Direção baseada na rotação
	velocity = direction * speed  # Define a velocidade
	move_and_slide()  # Move o player
	if Input.is_action_pressed("ui_down") and !loading:
		can_load = true
		scale = Vector2(0.75,0.75)
		$Bite.play()
	else:
		scale = Vector2(1,1)
		can_load = false
