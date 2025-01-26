extends Node2D

@export var food = preload("res://scenes/item.tscn")
@export var vovo = preload("res://scenes/player1.tscn")
@export var neto = preload("res://scenes/player2.tscn")

var area: Rect2 = Rect2(Vector2(0,0), Vector2(320,320))

func _ready():
	if Global.character != null:
		var player_instance = Global.character.instantiate()
 # Adicionar à árvore de cenas
		add_child(player_instance)
# Posicionar no local desejado
		player_instance.position = get_viewport_rect().size / 2
	else:
		print("Nenhum personagem selecionado!")
	$Timer.start()
	$Timer.wait_time = Global.difficulty + 5


func _on_timer_timeout():
	var food_inst = food.instantiate()
	food_inst.position = Vector2(randi_range(32,1054),randi_range(32,608))
	add_child(food_inst)
	randomize()
	pass # Replace with function body.
