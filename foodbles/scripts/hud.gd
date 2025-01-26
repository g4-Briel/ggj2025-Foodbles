extends Control

var lives = 3
var score: int = 0

func _ready():
	$Timer.start()
	$Timer.wait_time = Global.difficulty * 15
	$Panel/TextureProgressBar.max_value = $Timer.wait_time
	if Global.character == preload("res://scenes/player1.tscn"):
		$Panel/LabelLives/Sprite2D.texture = preload("res://sprites/granp_icon.png")
	if Global.character == preload("res://scenes/player2.tscn"):
		$Panel/LabelLives/Sprite2D.texture = preload("res://sprites/grans_icon.png")


func _process(delta):
	$Panel/LabelTimer.text = str(int($Timer.time_left))
	$Panel/TextureProgressBar.value = int($Timer.time_left)
	$Panel/LabelLives.text = "x" + str(lives)
	$Panel/LabelScore.text = str(score)




func _on_settings_pressed():
	# Carregar a cena de configurações
	get_tree().change_scene_to_file("res://scenes/settings.tscn")
	Global.return_scene = get_tree().current_scene
	print("Abrindo configurações...",Global.return_scene)
	pass # Replace with function body.


func _on_resume_pressed():
	$Pause.hide()
	Global.toggle_pause()
	pass # Replace with function body.


func _on_main_menu_pressed():
	get_tree().change_scene_to_file("res://scenes/mainmenu.tscn")
	pass # Replace with function body.
