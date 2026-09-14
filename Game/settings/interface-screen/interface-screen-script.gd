extends Node

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	HandleScreenSizeAndUI.setup_ui(self)

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

func _on_backbutton_pressed() -> void:
	get_tree().change_scene_to_file("res://settings/settings-screen/settings-screen.tscn")

func _on_uiscaleslider_value_changed(value: float) -> void:
	$"SettingsPanel/SettingsVBoxContainer/UIScaleHBoxContainer/ui-scale-value-label".text = str(int(value)) 

func _on_minimapscaleslider_value_changed(value: float) -> void:
	$"SettingsPanel/SettingsVBoxContainer/MinimapScaleHBoxContainer/minimap-scale-value-label".text = str(int(value))
