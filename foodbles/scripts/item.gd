extends Area2D

var on_bubble = false
@onready var player = $"../Player"

func _ready():
	modulate = Color(randi_range(0,1), randi_range(0,1), randi_range(0,1))
	randomize()

func _process(delta):
	if on_bubble:
		position = player.position

func _on_body_entered(body):
	print("colidiu com ", body)
	if body == player and player.can_load:
			on_bubble = true
			player.can_load = false
			player.loading = true
	pass # Replace with function body.


func _on_area_entered(area):
	print("colidiu com ", area)
	player.loading = false
	queue_free()
	pass # Replace with function body.
