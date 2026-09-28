extends Node2D

var campaign_files_label_text = "CAMPAIGN FILES LOADING"

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	HandleScreenSizeAndUI.setup_ui(self)
	$"SceneSelectionInfoPanel/ScenarioSelectionInfoVBoxContainer".visible = false
	$"SceneSelectionInfoPanel/ScenarioSelectionInfoVBoxContainer2".visible = false

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	$"SceneSelectionInfoPanel/CampaignHBoxContainer/campaign-files-label".text = campaign_files_label_text

func _on_backbutton_pressed() -> void:
	get_tree().change_scene_to_file("res://start-screen/start-screen.tscn")

func _on_begincampaignbutton_pressed() -> void:
	#get_tree().change_scene_to_file("res://game-modes/second-punic-war/second-punic-war-screen.tscn")
	pass
	
func _on_trojanwarbutton_pressed() -> void:
	var scenario_json_trojan_war_id = 1
	_load_data(scenario_json_trojan_war_id)

func _on_yearswarbutton_pressed() -> void:
	var scenario_json_100_years_war_id = 2
	_load_data(scenario_json_100_years_war_id)

func _on_warsofalexanderthegreatbutton_pressed() -> void:
	var scenario_json_wars_of_alexander_id = 3
	_load_data(scenario_json_wars_of_alexander_id)

func _on_secondpunicwarbutton_pressed() -> void:
	var scenario_json_second_punic_war_id = 4
	_load_data(scenario_json_second_punic_war_id)

func _on_thefirstcrusadebutton_pressed() -> void:
	var scenario_json_first_crusade_id = 5
	_load_data(scenario_json_first_crusade_id)

func _load_data(id):
	var description = RandomTextScript.get_description(id)
	_fill_screen_elements(description)
	
func _fill_screen_elements(description):
	$"SceneSelectionInfoPanel/ScenarioSelectionInfoVBoxContainer".visible = true
	$"SceneSelectionInfoPanel/ScenarioSelectionInfoVBoxContainer/scenario-photo-texture-rect/OnPhotoTextPanel/campaign-label".text = description["campaign"]
	$"SceneSelectionInfoPanel/ScenarioSelectionInfoVBoxContainer/scenario-photo-texture-rect/OnPhotoTextPanel/scenario-label".text = description["scenario"]
	$"SceneSelectionInfoPanel/ScenarioSelectionInfoVBoxContainer/scenario-photo-texture-rect/OnPhotoTextPanel/geography-label".text = description["geography"]
	$"SceneSelectionInfoPanel/ScenarioSelectionInfoVBoxContainer2".visible = true
	$"SceneSelectionInfoPanel/ScenarioSelectionInfoVBoxContainer2/scenario-label".text = description["scenario"]
	$"SceneSelectionInfoPanel/ScenarioSelectionInfoVBoxContainer2/scenario-description-label".text = description["scenario-description"]
	$"SceneSelectionInfoPanel/ScenarioSelectionInfoVBoxContainer2/InfoHBoxContainer/era-rich-text-label".text = description["era"]
	$"SceneSelectionInfoPanel/ScenarioSelectionInfoVBoxContainer2/InfoHBoxContainer/era-rich-text-label/era-description-rich-text-label".text = description["era-description"]
	$"SceneSelectionInfoPanel/ScenarioSelectionInfoVBoxContainer2/InfoHBoxContainer/region-rich-text-label".text = description["region"]
	$"SceneSelectionInfoPanel/ScenarioSelectionInfoVBoxContainer2/InfoHBoxContainer/region-rich-text-label/region-description-rich-text-label".text = description["region-description"]
	$"SceneSelectionInfoPanel/ScenarioSelectionInfoVBoxContainer2/ObejctiveInfoHBoxContainer/objective-rich-text-label".text = description["objective"]
	$"SceneSelectionInfoPanel/ScenarioSelectionInfoVBoxContainer2/ObejctiveInfoHBoxContainer/objective-rich-text-label/objective-description-rich-text-label".text = description["objective-description"]
	$"SceneSelectionInfoPanel/ScenarioSelectionInfoVBoxContainer2/playable-sides-label".text = description["playable-sides"]
	$"SceneSelectionInfoPanel/ScenarioSelectionInfoVBoxContainer/scenario-photo-texture-rect".texture = load(description["scenario-photo"])
	campaign_files_label_text = "CAMPAIGN FILES READY"
