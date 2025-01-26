extends Control


func _on_difficult_value_changed(value):
	Global.difficulty = value
	pass # Replace with function body.


func _on_volume_value_changed(value):
	Global.volume = value
	AudioServer.set_bus_volume_db(AudioServer.get_bus_index("Master"), value)
	pass # Replace with function body.


func _on_return_pressed():
	get_tree().change_scene_to_file("res://scenes/mainmenu.tscn")
	pass # Replace with function body.
