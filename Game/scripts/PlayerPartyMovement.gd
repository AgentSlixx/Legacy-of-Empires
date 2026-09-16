class_name PlayerPartyPosition
extends Node2D

@export var movement_speed := 30
var destination := Vector2i.ZERO
var moving := false
var player_party: Node2D = null
var marching_icon: Texture2D = null
var standing_icon: Texture2D = null
var is_dragging = false
var initial_pos = Vector2.ZERO

#We set initial values in this one
func setup(party: Node2D, new_icon: Texture2D) -> void:
	player_party = party
	destination = party.global_position
	moving = false
	standing_icon = party.texture
	marching_icon = new_icon

#This function serves to handle mouse click and drag events on the map, so game
#acts accordingly, which is: if its simple left mouse button click, player army
#moves towards clicked position, if its drag, it means camera is moving and
#player army should remain where it is
func _unhandled_input(event) -> void:
	if event is InputEventMouseButton and event.button_index == MOUSE_BUTTON_LEFT:
			if event.pressed:
				initial_pos = event.position
				is_dragging = false
			else:
				var distance = (event.position - initial_pos).length()
				if distance < 10: # Threshold for click vs drag
					var destination = get_global_mouse_position() #if its click
					move_to(destination) #we move
				else:
					pass #if its drag, camera is moving and army stands still

#This function basically sets moving values and launches moving operation
func move_to(target: Vector2) -> void:
	if not is_instance_valid(player_party):
		return
	destination = target
	moving = true
	
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	#If player is not moving, means its standing
	if not moving:
		return
	#basic check in case player_party forwarded to the script is null or not valid
	if not is_instance_valid(player_party):
		return
	#distance is distance from current position on the map when player is moving
	#or standing, to the clicked destination
	var distance = player_party.global_position.distance_to(destination)
	
	#This is stopping condition, once distance is below 0.5, player stops moving
	if distance < 0.5:
		player_party.texture = standing_icon
		player_party.global_position = destination
		moving = false
		return
	#Chage icon to marching when player is marching
	player_party.texture = marching_icon
	#We set direction of moving towards destination where player clicked
	var direction = player_party.global_position.direction_to(destination)
	#We calculate new position of the player on the map by using values we 
	#already prepared 
	player_party.global_position += direction * movement_speed * delta
