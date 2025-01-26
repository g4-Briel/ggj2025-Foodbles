extends Control

# Botões da interface
@onready var start_button = $VBoxContainer/Start
@onready var settings_button = $VBoxContainer/Settings
@onready var exit_button = $VBoxContainer/Exit


func _ready():
	# Conectando os sinais de clique dos botões
	$MainMenuBox.hide()
	$Start.show()


# Função chamada ao pressionar o botão "Iniciar Jogo"
func _on_start_pressed():
	print("Iniciando o jogo...")
	$Start.hide()
	$MainMenuBox.show()


# Função chamada ao pressionar o botão "Configurações"
func _on_settings_pressed():
	print("Abrindo configurações...")
	# Carregar a cena de configurações
	get_tree().change_scene_to_file("res://scenes/settings.tscn")  # Substitua pelo caminho da sua cena de configurações

# Função chamada ao pressionar o botão "Sair"
func _on_exit_pressed():
	print("Saindo do jogo...")
	get_tree().quit()  # Fecha o jogo


func _on__player_pressed():
	$Tips.text = "Select Character"
	print("Select Character")
	$MainMenuBox/CharacterBox.show()
	pass # Replace with function body.


func _on_select_player_pressed():
	$MainMenuBox/CharacterBox.show()
	pass # Replace with function body.
