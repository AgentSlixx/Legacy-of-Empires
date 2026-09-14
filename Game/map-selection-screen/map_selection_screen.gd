extends Node2D

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	HandleScreenSizeAndUI.setup_ui(self)

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

func _on_back_pressed() -> void:
	get_tree().change_scene_to_file("res://start-screen//start-screen.tscn")

func _on_second_punic_war_pressed() -> void:
	get_tree().change_scene_to_file("res://GameModes/SecondPunicWar/GameScene.tscn")
