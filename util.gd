extends Node

class_name Util

class Size:
	var width: int
	var height: int
	
	func _init(w: int, h: int):
		self.width = w
		self.height = h

class Op:
	var obj
	var name
	var args
	
	func _init(o, name, args=[]):
		self.obj = o
		self.name = name
		self.args = args

	func call_op():
		if self.obj.has_method(self.name):
			return self.obj.callv(self.name, self.args)
