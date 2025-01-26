extends Area2D

var on_bubble = false
var root = false
@onready var player = $"../player"

func _ready():
	$Sprite2D.frame = randi_range(0,24)
	#modulate = Color(randi_range(0,1), randi_range(0,1), randi_range(0,1))
	randomize()

func _process(delta):
	if on_bubble:
		$Timer.stop()
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


func _on_timer_timeout():
	if root:
		queue_free()
	modulate = Color(0.5, 1.0, 0.5)
	root = true
	$Timer.start()
	pass # Replace with function body.
