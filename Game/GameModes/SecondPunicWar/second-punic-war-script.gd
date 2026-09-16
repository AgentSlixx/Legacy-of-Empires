extends Node2D

var marching_player_icon: Texture2D = null #Need to declare it as Texture2D so
#we can properly access it in other script and set it as new texture for Sprite2D

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	HandleScreenSizeAndUI.setup_ui(self)
	marching_player_icon = $"Node2D/marching-player-icon".texture #this is
	#the marching icon, we need to send its texture to setup function, in order 
	#for icons to change while player is marching, its pretty simple, you just 
	#take path to a node, you can do that by right clicking on that Sprite2D, go
	#for copy node path, and just write $"" and paste path in between "", or 
	#write $"" and once you start typing options will appear
	#This function sets up movement system for player
	PlayerPartyMovement.setup($"Node2D/standing-player-icon", marching_player_icon)

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
