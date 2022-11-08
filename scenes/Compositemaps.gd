extends Node2D

var maptype = 'dungeonmap1'


onready var maps = {
	'dungeonmap1': preload("res://scenes/Maps/dungeonmap1.tscn"),
	'dungeonmap2': preload("res://scenes/Maps/dungeonmap2.tscn"),
	}
	
func _ready():
	var map = maps[maptype].instance()
	
	add_child(map)

