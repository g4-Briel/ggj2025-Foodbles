extends Area2D

var  on_bubble = false
@onready var player = $"../Player"

func _ready():
	modulate = Color(randi_range(0,1), randi_range(0,1), randi_range(0,1))
	randomize()

func _process(delta):
	if on_bubble:
		position = player.position

func _on_body_entered(body):
	if body == player:
		on_bubble = true
	pass # Replace with function body.
