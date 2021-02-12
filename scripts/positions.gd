extends Node

class_name Positions

static func neighbour_positions4(x, y):
	return [[x-1, y], [x+1, y], [x, y-1], [x, y+1]]

static func neighbour_positions8(x, y): # returns neighbour [x, y]
	return [[x-1, y], [x+1, y], [x-1, y-1], [x, y-1], [x+1, y-1], [x-1, y+1], [x, y+1], [x+1, y+1]]
