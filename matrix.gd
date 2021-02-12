extends Node

class_name Matrix

const EL_WIRE = 1
const EL_WIRE_ACTIVATED = 2
const EL_WIRE_TAIL = 3
const EL_WIRE_GUN = 4

const EL_WIRE_BULLET_LEFT = 5
const EL_WIRE_BULLET_RIGHT = 6
const EL_WIRE_BULLET_UP = 7
const EL_WIRE_BULLET_DOWN = 8

const EL_WIRE_TAIL_LOW = 9

const EL_WIRE_BLOCKER = 10
const EL_WIRE_BLOCKER_BLOCK = 11

const EL_WIRE_BUTTERY = 12

var width
var height
var matrix

func _init(w, h):
	self.width = w
	self.height = h
	self.matrix = []
	__generate()

func __is_limit(x, y):
	return x < 0 or x >= width or y < 0 or y >= height

func __generate():
	for y in range(height):
		var line = []
		for x in range(width):
			line.append(0)
		matrix.append(line)

func get_val(x, y):
	if __is_limit(x, y):
		return 0
	return matrix[y][x]

func set_val(x, y, elem):
	if __is_limit(x, y):
		return
	matrix[y][x] = elem

func clear():
	matrix.clear()
	__generate()
