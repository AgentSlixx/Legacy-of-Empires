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
	$"SceneSelectionInfoPanel/ScenarioSelectionInfoVBoxContainer".visible = true
	$"SceneSelectionInfoPanel/ScenarioSelectionInfoVBoxContainer/scenario-photo-texture-rect/OnPhotoTextPanel/campaign-label".text = "CAMPAIGN • AGE OF HEROES"
	$"SceneSelectionInfoPanel/ScenarioSelectionInfoVBoxContainer/scenario-photo-texture-rect/OnPhotoTextPanel/scenario-label".text = "THE TROJAN WAR"
	$"SceneSelectionInfoPanel/ScenarioSelectionInfoVBoxContainer/scenario-photo-texture-rect/OnPhotoTextPanel/geography-label".text = "AEGEAN SEA • 12TH CENTURY BC"
	$"SceneSelectionInfoPanel/ScenarioSelectionInfoVBoxContainer2".visible = true
	$"SceneSelectionInfoPanel/ScenarioSelectionInfoVBoxContainer2/scenario-label".text = "THE TROJAN WAR"
	$"SceneSelectionInfoPanel/ScenarioSelectionInfoVBoxContainer2/scenario-description-label".text = "LEAD THE ACHAEAN ACROSS THE AEGEAN OR DEFEND THE LEGENDARY WALLS OF TROY. BALANCE HONOUR , SIEGECRAFT AND SURVIVAL IN A WAR DESTINED TO BECOME MYTH."
	$"SceneSelectionInfoPanel/ScenarioSelectionInfoVBoxContainer2/InfoHBoxContainer/era-rich-text-label".text = " ERA"
	$"SceneSelectionInfoPanel/ScenarioSelectionInfoVBoxContainer2/InfoHBoxContainer/era-rich-text-label/era-description-rich-text-label".text = " 
 AGE OF HEROES"
	$"SceneSelectionInfoPanel/ScenarioSelectionInfoVBoxContainer2/InfoHBoxContainer/region-rich-text-label".text = " REGION"
	$"SceneSelectionInfoPanel/ScenarioSelectionInfoVBoxContainer2/InfoHBoxContainer/region-rich-text-label/region-description-rich-text-label".text = "  
 AEGEAN SEA"
	$"SceneSelectionInfoPanel/ScenarioSelectionInfoVBoxContainer2/ObejctiveInfoHBoxContainer/objective-rich-text-label".text = "• OBJECTIVE - "
	$"SceneSelectionInfoPanel/ScenarioSelectionInfoVBoxContainer2/ObejctiveInfoHBoxContainer/objective-rich-text-label/objective-description-rich-text-label".text = "BREAK THE WALLS OF TROY, OR HOLD THEM AGAINST ENEMY INVADERS."
	$"SceneSelectionInfoPanel/ScenarioSelectionInfoVBoxContainer2/scenario-label2".text = "PLAYABLE SIDES:   ACHAEANS • TROJANS"
	$"SceneSelectionInfoPanel/ScenarioSelectionInfoVBoxContainer/scenario-photo-texture-rect".texture = preload("res://scenario-selection-screen/scenario-selection-screen-assets/trojan-war-scenario-image.jpg")
	campaign_files_label_text = "CAMPAIGN FILES READY"

func _on_yearswarbutton_pressed() -> void:
	$"SceneSelectionInfoPanel/ScenarioSelectionInfoVBoxContainer".visible = true
	$"SceneSelectionInfoPanel/ScenarioSelectionInfoVBoxContainer/scenario-photo-texture-rect/OnPhotoTextPanel/campaign-label".text = "CAMPAIGN • AGE OF CHIVALRY"
	$"SceneSelectionInfoPanel/ScenarioSelectionInfoVBoxContainer/scenario-photo-texture-rect/OnPhotoTextPanel/scenario-label".text = "THE 100 YEARS WAR"
	$"SceneSelectionInfoPanel/ScenarioSelectionInfoVBoxContainer/scenario-photo-texture-rect/OnPhotoTextPanel/geography-label".text = "WESTERN EUROPE • 1337–1453"
	$"SceneSelectionInfoPanel/ScenarioSelectionInfoVBoxContainer2".visible = true
	$"SceneSelectionInfoPanel/ScenarioSelectionInfoVBoxContainer2/scenario-label".text = "THE 100 YEARS WAR"
	$"SceneSelectionInfoPanel/ScenarioSelectionInfoVBoxContainer2/scenario-description-label".text = "CLAIM THE CROWN OF FRANCE OR DEFEND THE VALOIS DYNASTY. MASTER LONG BOW TACTICS, SIEGE WARFARE, AND FEUDAL LOYALTIES IN A DECADE-SPANNING STRUGGLE FOR SUPREMACY."
	$"SceneSelectionInfoPanel/ScenarioSelectionInfoVBoxContainer2/InfoHBoxContainer/era-rich-text-label".text = " ERA"
	$"SceneSelectionInfoPanel/ScenarioSelectionInfoVBoxContainer2/InfoHBoxContainer/era-rich-text-label/era-description-rich-text-label".text = " 
 LATE MIDDLE AGES"
	$"SceneSelectionInfoPanel/ScenarioSelectionInfoVBoxContainer2/InfoHBoxContainer/region-rich-text-label".text = " REGION"
	$"SceneSelectionInfoPanel/ScenarioSelectionInfoVBoxContainer2/InfoHBoxContainer/region-rich-text-label/region-description-rich-text-label".text = "  
 WESTERN EUROPE"
	$"SceneSelectionInfoPanel/ScenarioSelectionInfoVBoxContainer2/ObejctiveInfoHBoxContainer/objective-rich-text-label".text = "• OBJECTIVE - "
	$"SceneSelectionInfoPanel/ScenarioSelectionInfoVBoxContainer2/ObejctiveInfoHBoxContainer/objective-rich-text-label/objective-description-rich-text-label".text = "UNITE THE FRENCH CROWN UNDER YOUR BANNER OR EXPEL THE ENGLISH INVADERS."
	$"SceneSelectionInfoPanel/ScenarioSelectionInfoVBoxContainer2/scenario-label2".text = "PLAYABLE SIDES:   KINGDOM OF ENGLAND • KINGDOM OF FRANCE"
	$"SceneSelectionInfoPanel/ScenarioSelectionInfoVBoxContainer/scenario-photo-texture-rect".texture = preload("res://scenario-selection-screen/scenario-selection-screen-assets/100-years-war-scenario-image.jpg")
	campaign_files_label_text = "CAMPAIGN FILES READY"

func _on_warsofalexanderthegreatbutton_pressed() -> void:
	$"SceneSelectionInfoPanel/ScenarioSelectionInfoVBoxContainer".visible = true
	$"SceneSelectionInfoPanel/ScenarioSelectionInfoVBoxContainer/scenario-photo-texture-rect/OnPhotoTextPanel/campaign-label".text = "CAMPAIGN • RISE OF MACEDON"
	$"SceneSelectionInfoPanel/ScenarioSelectionInfoVBoxContainer/scenario-photo-texture-rect/OnPhotoTextPanel/scenario-label".text = "WARS OF ALEXANDER"
	$"SceneSelectionInfoPanel/ScenarioSelectionInfoVBoxContainer/scenario-photo-texture-rect/OnPhotoTextPanel/geography-label".text = "PERSIA & LEVANT • 336–323 BC"
	$"SceneSelectionInfoPanel/ScenarioSelectionInfoVBoxContainer2".visible = true
	$"SceneSelectionInfoPanel/ScenarioSelectionInfoVBoxContainer2/scenario-label".text = "WARS OF ALEXANDER"
	$"SceneSelectionInfoPanel/ScenarioSelectionInfoVBoxContainer2/scenario-description-label".text = "MARCH TO THE ENDS OF THE KNOWN WORLD. COMMAND THE UNSTOPPABLE MACEDONIAN PHALANX AND COMPANION CAVALRY TO DISMANTLE THE MIGHTY ACHAEMENID EMPIRE."
	$"SceneSelectionInfoPanel/ScenarioSelectionInfoVBoxContainer2/InfoHBoxContainer/era-rich-text-label".text = " ERA"
	$"SceneSelectionInfoPanel/ScenarioSelectionInfoVBoxContainer2/InfoHBoxContainer/era-rich-text-label/era-description-rich-text-label".text = " 
 CLASSICAL ANTIQUITY"
	$"SceneSelectionInfoPanel/ScenarioSelectionInfoVBoxContainer2/InfoHBoxContainer/region-rich-text-label".text = " REGION"
	$"SceneSelectionInfoPanel/ScenarioSelectionInfoVBoxContainer2/InfoHBoxContainer/region-rich-text-label/region-description-rich-text-label".text = "  
 PERSIAN EMPIRE"
	$"SceneSelectionInfoPanel/ScenarioSelectionInfoVBoxContainer2/ObejctiveInfoHBoxContainer/objective-rich-text-label".text = "• OBJECTIVE - "
	$"SceneSelectionInfoPanel/ScenarioSelectionInfoVBoxContainer2/ObejctiveInfoHBoxContainer/objective-rich-text-label/objective-description-rich-text-label".text = "CONQUER THE PERSIAN CAPITAL OF PERSEPOLIS AND EXPAND THE EMPIRE TO INDIA."
	$"SceneSelectionInfoPanel/ScenarioSelectionInfoVBoxContainer2/scenario-label2".text = "PLAYABLE SIDES:   MACEDONIAN EMPIRE • ACHAEMENID PERSIA"
	$"SceneSelectionInfoPanel/ScenarioSelectionInfoVBoxContainer/scenario-photo-texture-rect".texture = preload("res://scenario-selection-screen/scenario-selection-screen-assets/alexander-wars-scenario-image.jpg")
	campaign_files_label_text = "CAMPAIGN FILES READY"

func _on_secondpunicwarbutton_pressed() -> void:
	$"SceneSelectionInfoPanel/ScenarioSelectionInfoVBoxContainer".visible = true
	$"SceneSelectionInfoPanel/ScenarioSelectionInfoVBoxContainer/scenario-photo-texture-rect/OnPhotoTextPanel/campaign-label".text = "CAMPAIGN • CLASH OF TITANS"
	$"SceneSelectionInfoPanel/ScenarioSelectionInfoVBoxContainer/scenario-photo-texture-rect/OnPhotoTextPanel/scenario-label".text = "THE SECOND PUNIC WAR"
	$"SceneSelectionInfoPanel/ScenarioSelectionInfoVBoxContainer/scenario-photo-texture-rect/OnPhotoTextPanel/geography-label".text = "WESTERN MEDITERRANEAN • 218–201 BC"
	$"SceneSelectionInfoPanel/ScenarioSelectionInfoVBoxContainer2".visible = true
	$"SceneSelectionInfoPanel/ScenarioSelectionInfoVBoxContainer2/scenario-label".text = "THE SECOND PUNIC WAR"
	$"SceneSelectionInfoPanel/ScenarioSelectionInfoVBoxContainer2/scenario-description-label".text = "CROSS THE FROZEN ALPS WITH HANNIBAL OR DEFEND THE ITALIAN PENINSULA WITH SCIPIO. EXPERIENCE THE ULTIMATE STRUGGLE BETWEEN ROME AND CARTHAGE."
	$"SceneSelectionInfoPanel/ScenarioSelectionInfoVBoxContainer2/InfoHBoxContainer/era-rich-text-label".text = " ERA"
	$"SceneSelectionInfoPanel/ScenarioSelectionInfoVBoxContainer2/InfoHBoxContainer/era-rich-text-label/era-description-rich-text-label".text = " 
 ANCIENT ROME"
	$"SceneSelectionInfoPanel/ScenarioSelectionInfoVBoxContainer2/InfoHBoxContainer/region-rich-text-label".text = " REGION"
	$"SceneSelectionInfoPanel/ScenarioSelectionInfoVBoxContainer2/InfoHBoxContainer/region-rich-text-label/region-description-rich-text-label".text = "  
 MEDITERRANEAN BASIN"
	$"SceneSelectionInfoPanel/ScenarioSelectionInfoVBoxContainer2/ObejctiveInfoHBoxContainer/objective-rich-text-label".text = "• OBJECTIVE - "
	$"SceneSelectionInfoPanel/ScenarioSelectionInfoVBoxContainer2/ObejctiveInfoHBoxContainer/objective-rich-text-label/objective-description-rich-text-label".text = "DECIMATE ROME ON ITS OWN SOIL OR DESTROY CARTHAGE ONCE AND FOR ALL."
	$"SceneSelectionInfoPanel/ScenarioSelectionInfoVBoxContainer2/scenario-label2".text = "PLAYABLE SIDES:   ROMAN REPUBLIC • CARTHAGINIAN EMPIRE"
	$"SceneSelectionInfoPanel/ScenarioSelectionInfoVBoxContainer/scenario-photo-texture-rect".texture = preload("res://scenario-selection-screen/scenario-selection-screen-assets/second-punic-war-scenario-image.jpg")
	campaign_files_label_text = "CAMPAIGN FILES READY"

func _on_thefirstcrusadebutton_pressed() -> void:
	$"SceneSelectionInfoPanel/ScenarioSelectionInfoVBoxContainer".visible = true
	$"SceneSelectionInfoPanel/ScenarioSelectionInfoVBoxContainer/scenario-photo-texture-rect/OnPhotoTextPanel/campaign-label".text = "CAMPAIGN • HOLY LAND"
	$"SceneSelectionInfoPanel/ScenarioSelectionInfoVBoxContainer/scenario-photo-texture-rect/OnPhotoTextPanel/scenario-label".text = "THE FIRST CRUSADE"
	$"SceneSelectionInfoPanel/ScenarioSelectionInfoVBoxContainer/scenario-photo-texture-rect/OnPhotoTextPanel/geography-label".text = "LEVANT • 1096–1099"
	$"SceneSelectionInfoPanel/ScenarioSelectionInfoVBoxContainer2".visible = true
	$"SceneSelectionInfoPanel/ScenarioSelectionInfoVBoxContainer2/scenario-label".text = "THE FIRST CRUSADE"
	$"SceneSelectionInfoPanel/ScenarioSelectionInfoVBoxContainer2/scenario-description-label".text = "ANSWER THE CALL TO RECLAIM THE HOLY LAND OR RALLY THE DESERT REALMS TO DEFEND THEM. NAVIGATE RELIGIOUS FERVOR, DIPLOMACY, AND SIEGE WARFARE."
	$"SceneSelectionInfoPanel/ScenarioSelectionInfoVBoxContainer2/InfoHBoxContainer/era-rich-text-label".text = " ERA"
	$"SceneSelectionInfoPanel/ScenarioSelectionInfoVBoxContainer2/InfoHBoxContainer/era-rich-text-label/era-description-rich-text-label".text = " 
 HIGH MIDDLE AGES"
	$"SceneSelectionInfoPanel/ScenarioSelectionInfoVBoxContainer2/InfoHBoxContainer/region-rich-text-label".text = " REGION"
	$"SceneSelectionInfoPanel/ScenarioSelectionInfoVBoxContainer2/InfoHBoxContainer/region-rich-text-label/region-description-rich-text-label".text = "  
 THE LEVANT"
	$"SceneSelectionInfoPanel/ScenarioSelectionInfoVBoxContainer2/ObejctiveInfoHBoxContainer/objective-rich-text-label".text = "• OBJECTIVE - "
	$"SceneSelectionInfoPanel/ScenarioSelectionInfoVBoxContainer2/ObejctiveInfoHBoxContainer/objective-rich-text-label/objective-description-rich-text-label".text = "CAPTURE JERUSALEM OR SECURE THE SELJUK DOMINION OVER THE HOLY LAND."
	$"SceneSelectionInfoPanel/ScenarioSelectionInfoVBoxContainer2/scenario-label2".text = "PLAYABLE SIDES:   CRUSADER STATES • SELJUK SULTANATE"
	$"SceneSelectionInfoPanel/ScenarioSelectionInfoVBoxContainer/scenario-photo-texture-rect".texture = preload("res://scenario-selection-screen/scenario-selection-screen-assets/first-crusade-scenario-image.jpg")
	campaign_files_label_text = "CAMPAIGN FILES READY"
