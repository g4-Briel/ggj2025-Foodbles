extends Node

# Variáveis globais para configurações
var volume = 1.0
var language = "en"
var difficulty = 5
var character: PackedScene = null


@onready var return_scene = get_tree()


func toggle_pause():
	get_tree().paused = not get_tree().paused
	emit_signal("pause")


func _input(event):
	if event.is_action_pressed("ui_cancel"):
		toggle_pause()
