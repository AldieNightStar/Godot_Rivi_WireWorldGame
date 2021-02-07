extends Node

var loaded_matrix_path = null

func readFileAsObject(path):
	var file = File.new()
	if file.open(path, File.READ) != 0:
		return null
	var text = file.get_as_text()
	var data = parse_json(text)
	file.close()
	return data

func writeFileAsObject(path, data):
	var file = File.new()
	if file.open(path, File.WRITE) != 0:
		return
	file.store_string(to_json(data))
	file.close()
