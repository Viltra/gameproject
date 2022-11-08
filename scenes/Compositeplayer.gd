extends Node2D

onready var maptype = get_node("../Compositemaps").maptype

onready var players:int = 5
var player_positions: Array

func _positioner():
	if maptype == 'dungeonmap1':
		 player_positions = [
			 Vector2(152, 64),
			 Vector2(152,464),
			 Vector2(32,264),
			 Vector2(200,232),
			 Vector2(320,360),
		]
	elif maptype == 'dungeonmap2':
		 player_positions = [
			 Vector2(1592, 1360),
			 Vector2(1608,1272),
			 Vector2(1504,1320),
			 Vector2(1584,1432),
			 Vector2(1504,1424),
		]


func _ready():
	_positioner()
	for index in range(players):
		var new_player = load("res://scenes/Player.tscn").instance()
		new_player.position = player_positions[index]
		add_child(new_player)
	
