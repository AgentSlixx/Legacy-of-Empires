extends Node

var BASE_SCREEN = Vector2(1152.0, 648.0)

var tracked_elements := {}

var background: Node = null
var current_scene: Node = null

#Main entry function, you call it in _ready() function of a scene
func setup_ui(target_scene: Node) -> void:
	#Reset all data
	tracked_elements.clear()
	background = null
	current_scene = target_scene

	_collect_all_elements(target_scene)
	
	#We connect to the signal of a window size change, if checks if we are already connected
	if not get_tree().root.size_changed.is_connected(_on_window_resized):
		get_tree().root.size_changed.connect(_on_window_resized)
	
	#Calculate new data after window resize
	_on_window_resized()

#Function that goes through all scene UI elements and collects their data
func _collect_all_elements(current_node: Node) -> void:
	for child in current_node.get_children(): #Take all children from the scene 
	#Those children are top level parents, stuff like containers, panels and such
	#There is no need to go deeper because kids move together with parent
		if child is Control or child is Node2D:

			var is_background = (child.name.contains("bckgd") or child.name.contains("background")
				or child.name.contains("Background")) #if current node/child 
				#has any of the strings like bckgd, background or Background in its name
				#we put it in is_background

			if is_background: #if current_node is background
				background = child
			else: #we add it to the list of elements if its other element
				_save_initial_data(child)
		#We don't need recursive here, just grab parent node and all its kids 
		#will move and change together with parent
		#if child.get_child_count() > 0:
		#	_collect_all_elements(child)

#Function that saves initial data of a node, basically start screen design
#The way you placed things on the screen 
func _save_initial_data(node: Node) -> void:
	var node_size = Vector2.ZERO

	if node is Control:
		node_size = node.size #save size value of a current node in list

	elif node is Sprite2D and node.texture: #if its photo we calculate size according
		#to the size of sprite/photo and current scale of the photo
		node_size = node.texture.get_size() * node.scale

	tracked_elements[node] = {"pos": node.position, "size": node_size} #populate
	#dictionary with value

#Function specifically made to resize and reposition background
func _reposition_background(screen_size: Vector2) -> void:

	if background is Control: #if its TextureRect
		background.position = Vector2.ZERO
		background.size = screen_size

	elif background is Sprite2D and background.texture: #if its standard sprite
		var tex_size = background.texture.get_size()
		#Standard sprite has its center sitting at the top left corner of the screen
		#so we just put its center on the center screen, and scale it properly to fit
		background.position = screen_size / 2.0
		background.scale = screen_size / tex_size

#We call this function every time window size changes
func _on_window_resized() -> void:
	#We take size of the new resized window
	var screen_size = get_viewport().get_visible_rect().size
	#Reposition background according to the new screen size
	_reposition_background(screen_size)
	#Reposition every element on the scene according to the new size
	for node in tracked_elements.keys():
		_reposition_element(node, screen_size)

#Function that does reposition of other elements but background
func _reposition_element(node: Node, screen_size: Vector2) -> void:

	#Some basic checks
	if not is_instance_valid(node):
		return
	#Also some basic checks
	if not tracked_elements.has(node):
		return

	#We take start data of the node
	var start_pos: Vector2 = tracked_elements[node]["pos"]
	var start_size: Vector2 = tracked_elements[node]["size"]

	#Center of the element
	var center_x = start_pos.x
	var center_y = start_pos.y

	#Control nodes have their, i don't know how its called, but its like a cross
	#thing in the upper left corner, so their center needs to be calculated by 
	#adding half of their size to the center value, its pretty simple maths, basic
	if node is Control:
		center_x += start_size.x / 2.0
		center_y += start_size.y / 2.0

	#Percentage ratio of a element center and base screen 
	var ratio_x = center_x / BASE_SCREEN.x
	var ratio_y = center_y / BASE_SCREEN.y

	#Calculate new center of the element by multiplying new screen size and ratios
	var new_center_x = screen_size.x * ratio_x
	var new_center_y = screen_size.y * ratio_y

	#We move node to the new position, but if its Control node like buttons for
	#example, we need to return back to the upper left corner of the element
	if node is Control:
		node.position = Vector2(new_center_x - node.size.x / 2.0, new_center_y - node.size.y / 2.0)
	else:
		node.position = Vector2(new_center_x, new_center_y)
