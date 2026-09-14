extends Node2D

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	$"flag-waving-animation-player".play("flag-waving")
	var quote = RandomTextScript.get_random_quote()
	$"quote-label".text = " "
	$"quote-label".text = quote.text + "\n- " + quote.author
	# We forward 'self', which is basically sending scene itself
	HandleScreenSizeAndUI.setup_ui(self)

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

func _on_selectscenariobutton_pressed() -> void:
	get_tree().change_scene_to_file("res://map-selection-screen//map-selection-screen.tscn")
	 
func _on_exitgamebutton_pressed() -> void:
	get_tree().quit() #closes the game

func _on_settingsgamebutton_pressed() -> void:
	get_tree().change_scene_to_file("res://settings/settings-screen/settings-screen.tscn")

func _on_creditsgamebutton_pressed() -> void:
	get_tree().change_scene_to_file("res://credits-screen/credits-screen.tscn")
