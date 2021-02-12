extends Node

class_name Sprites

static func _spr_set_tile(lvl, x, y, val):
	val = number_of(val)
	var tex = load("res://assets/" + str(val) + ".png")

# Element_constant to sprite_number converter
static func number_of(elem):
	if elem == Matrix.EL_WIRE:
		return 1 # Wire sprite
	elif elem == Matrix.EL_WIRE_ACTIVATED:
		return 2 # Wire activated sprite
	elif elem in [Matrix.EL_WIRE_TAIL, Matrix.EL_WIRE_TAIL_LOW]:
		return 3 # Tail sprite
	elif elem == Matrix.EL_WIRE_GUN:
		return 4 # Wire gun sprite
	elif elem in [Matrix.EL_WIRE_BULLET_DOWN, Matrix.EL_WIRE_BULLET_LEFT, Matrix.EL_WIRE_BULLET_RIGHT, Matrix.EL_WIRE_BULLET_UP]:
		return 5 # Wire bullet sprite
	elif elem == Matrix.EL_WIRE_BLOCKER:
		return 6
	elif elem == Matrix.EL_WIRE_BLOCKER_BLOCK:
		return 7
	elif elem == Matrix.EL_WIRE_BUTTERY:
		return 8 # Buttery sprite
	else:
		return 0 # Nothing
