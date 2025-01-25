extends Control

# Botões da interface
@onready var start_button = $VBoxContainer/Start
@onready var settings_button = $VBoxContainer/Settings
@onready var exit_button = $VBoxContainer/Exit

#func _ready():
	## Conectando os sinais de clique dos botões
	#start_button.connect("pressed", self, "_on_start_pressed")
	#settings_button.connect("pressed", self, "_on_settings_pressed")
	#exit_button.connect("pressed", self, "_on_exit_pressed")

# Função chamada ao pressionar o botão "Iniciar Jogo"
func _on_start_pressed():
	print("Iniciando o jogo...")
	$Start.hide()
	$main.show()
	# Carregar a próxima cena (Jogo)
	#get_tree().change_scene("res://Scenes/Game.tscn")  # Substitua pelo caminho da sua cena de jogo

# Função chamada ao pressionar o botão "Configurações"
func _on_settings_pressed():
	print("Abrindo configurações...")
	# Carregar a cena de configurações
	#get_tree().change_scene("res://Scenes/Settings.tscn")  # Substitua pelo caminho da sua cena de configurações

# Função chamada ao pressionar o botão "Sair"
func _on_exit_pressed():
	print("Saindo do jogo...")
	get_tree().quit()  # Fecha o jogo


func _on_select_character_pressed():
	$main.hide()
	pass # Replace with function body.
