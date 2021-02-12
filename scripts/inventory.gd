extends Node

class_name Inventory

const inventory = [Matrix.EL_WIRE, Matrix.EL_WIRE_ACTIVATED, Matrix.EL_WIRE_GUN, Matrix.EL_WIRE_BLOCKER, Matrix.EL_WIRE_BUTTERY]
var inv_item = 0

func item_prev():
	inv_item -= 1
	if inv_item < 0: inv_item = 0

func item_next():
	inv_item += 1
	if inv_item >= inventory.size(): inv_item = inventory.size() - 1

func item_get():
	return inventory[inv_item]

func show_curr_item_elem(lvl):
	var elem = item_get()
	var spr  = Sprites.number_of(elem)
	lvl.get_node("TileMap").set_cell(50, 0, spr - 1)
