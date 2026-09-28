extends Node

var quotes = []
var facts = []
var tips = []
var all = []
var scenario_text = []

func _ready():
	quotes = load_json("res://Legacy-of-Empires-quotes-facts-tips-text/quotes.json")
	facts = load_json("res://Legacy-of-Empires-quotes-facts-tips-text/historical_facts.json")
	tips = load_json("res://Legacy-of-Empires-quotes-facts-tips-text/loading_tips.json")
	scenario_text = load_json("res://Legacy-of-Empires-quotes-facts-tips-text/description.json")

func load_json(path):
	var file = FileAccess.open(path, FileAccess.READ)
	if file == null:
		return []
 
	var data = JSON.parse_string(file.get_as_text())
	if data != null:
		return data

func get_random_quote():
	return quotes.pick_random()

func get_random_fact():
	return facts.pick_random()

func get_random_tip():
	return tips.pick_random()
	
func get_description(id):
	for description in scenario_text:
		if description.get("id") == id:
			return description

func get_random_from_all(): #this one combines 3 random picks from each array,
	#and returns one, i will continue working on this function later
	all.append(get_random_quote())
	all.append(get_random_fact())
	all.append(get_random_tip())
	return all.pick_random()
