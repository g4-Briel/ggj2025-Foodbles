extends Control

var lives = 3

func _ready():
	$Timer.start()
	$Panel/TextureProgressBar.max_value = $Timer.wait_time


func _process(delta):
	$Panel/LabelTimer.text = str(int($Timer.time_left))
	$Panel/TextureProgressBar.value = int($Timer.time_left)
	$Panel/LabelLives.text = "x" + str(lives)


func _on_settings_pressed():
	# Carregar a cena de configurações
	get_tree().change_scene_to_file("res://scenes/settings.tscn")
	Global.return_scene = get_tree().current_scene
	print("Abrindo configurações...",Global.return_scene)
	pass # Replace with function body.


func _on_resume_pressed():
	$Pause.hide()
	pass # Replace with function body.


func _on_main_menu_pressed():
	get_tree().change_scene_to_file("res://scenes/mainmenu.tscn")
	pass # Replace with function body.
