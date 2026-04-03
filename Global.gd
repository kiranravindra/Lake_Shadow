extends Node

# Dictionary to store found clues for Episode 1
# Format: "Clue_ID": Boolean (true if found)
var clues_found = {
	"case_file": false,
	"security_tape": false,
	"locked_drawer": false
}

func collect_clue(id: String):
	if clues_found.has(id):
		clues_found[id] = true
		print("DEBUG: Collected " + id)
		check_stage_progress()

func check_stage_progress():
	var count = 0
	for value in clues_found.values():
		if value == true:
			count += 1
	print("DEBUG: Stage Progress: ", count, "/", clues_found.size())