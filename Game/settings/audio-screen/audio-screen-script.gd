extends Node

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	HandleScreenSizeAndUI.setup_ui(self)

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

func _on_mastervolumeslider_value_changed(value: float) -> void:
	$"VolumePanel/VBoxContainer/MasterVolumeHBoxContainer/master-volume-value-label".text = str(int(value))

func _on_musicvolumeslider_value_changed(value: float) -> void:
	$"VolumePanel/VBoxContainer/MusicVolumeHBoxContainer2/music-volume-value-label".text = str(int(value))

func _on_soundeffectsvolumeslider_value_changed(value: float) -> void:
	$"VolumePanel/VBoxContainer/SoundEffectsVolumeHBoxContainer3/sound-effects-volume-value-label".text = str(int(value))

func _on_ambientvolumeslider_value_changed(value: float) -> void:
	$"VolumePanel/VBoxContainer/AmbientVolumeHBoxContainer4/ambient-volume-value-label".text = str(int(value))
	
func _on_uivolumeslider_value_changed(value: float) -> void:
	$"VolumePanel/VBoxContainer/UIVolumeHBoxContainer5/ui-volume-value-label".text = str(int(value))

func _on_backbutton_pressed() -> void:
	get_tree().change_scene_to_file("res://settings/settings-screen/settings-screen.tscn")
