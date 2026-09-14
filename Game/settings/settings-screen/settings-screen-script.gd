extends Node

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	HandleScreenSizeAndUI.setup_ui(self)

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

func _on_back_pressed() -> void:
	get_tree().change_scene_to_file("res://start-screen/start-screen.tscn")

func _on_audiobutton_pressed() -> void:
	get_tree().change_scene_to_file("res://settings/audio-screen/audio-screen.tscn")

func _on_graphicsbutton_pressed() -> void:
	get_tree().change_scene_to_file("res://settings/graphics-screen/graphics-screen.tscn")

func _on_gameplaybutton_pressed() -> void:
	get_tree().change_scene_to_file("res://settings/gameplay-screen/gameplay-screen.tscn")

func _on_controlsbutton_pressed() -> void:
	get_tree().change_scene_to_file("res://settings/controls-screen/controls-screen.tscn")

func _on_languagebutton_pressed() -> void:
	get_tree().change_scene_to_file("res://settings/language-screen/language-screen.tscn")

func _on_restoredefaultsbutton_pressed() -> void:
	get_tree().change_scene_to_file("res://settings/restore-defaults-screen/restore-defaults-screen.tscn")

func _on_interfacebutton_pressed() -> void:
	get_tree().change_scene_to_file("res://settings/interface-screen/interface-screen.tscn")
