extends Node

class_name Cursors

static func cursor_tile_pos(lvl):
	var mpos = lvl.get_global_mouse_position()
	var x = floor(mpos.x / lvl.tile_size)
	var y = floor(mpos.y / lvl.tile_size)
	return Vector2(x, y)

static func cursor_show_frame(lvl):
	var tpos = cursor_tile_pos(lvl)
	lvl.get_node("CursorFrame").position = tpos * lvl.tile_size
