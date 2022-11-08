extends Node2D

var armorcolor = 'red'
var armoranimationPlayer
var armoranimationTree
var armoranimationState

var noblecolor = 'empty'
var nobleanimationPlayer
var nobleanimationTree
var nobleanimationState

var elvencolor = 'white'
var elvenanimationPlayer
var elvenanimationTree
var elvenanimationState

var flowingcolor = 'empty'
var flowinganimationPlayer
var flowinganimationTree
var flowinganimationState

var eyecolor = 'green'
var eyeanimationPlayer
var eyeanimationTree
var eyeanimationState

onready var armors = {
	'black': preload("res://scenes/Armors/Black Armor.tscn"),
	'green': preload("res://scenes/Armors/Green Armor.tscn"),
	'blue': preload("res://scenes/Armors/Blue Armor.tscn"),
	'purple': preload("res://scenes/Armors/Purple Armor.tscn"),
	'red': preload("res://scenes/Armors/Red Armor.tscn"),
	'empty': preload("res://scenes/Armors/Empty.tscn")
}

onready var nobles = {
	'black': preload("res://scenes/Noble/Black.tscn"),
	'blue' : preload("res://scenes/Noble/Blue.tscn"),
	'brown': preload("res://scenes/Noble/Brown.tscn"),
	'green': preload("res://scenes/Noble/Green.tscn"),
	'magenta': preload("res://scenes/Noble/Magenta.tscn"),
	'purple': preload("res://scenes/Noble/Purple.tscn"),
	'red': preload("res://scenes/Noble/Red.tscn"),
	'white': preload("res://scenes/Noble/White.tscn"),
	'empty': preload("res://scenes/Noble/Empty.tscn")
}

onready var elvens = {
	'black': preload("res://scenes/Elven/Black.tscn"),
	'blue' : preload("res://scenes/Elven/Blue.tscn"),
	'brown': preload("res://scenes/Elven/Brown.tscn"),
	'green': preload("res://scenes/Elven/Green.tscn"),
	'magenta': preload("res://scenes/Elven/Magenta.tscn"),
	'purple': preload("res://scenes/Elven/Purple.tscn"),
	'red': preload("res://scenes/Elven/Red.tscn"),
	'white': preload("res://scenes/Elven/White.tscn"),
	'empty': preload("res://scenes/Elven/Empty.tscn")
}

onready var flowings = {
	'black': preload("res://scenes/Flowing/Black.tscn"),
	'blue' : preload("res://scenes/Flowing/Blue.tscn"),
	'brown': preload("res://scenes/Flowing/Brown.tscn"),
	'green': preload("res://scenes/Flowing/Green.tscn"),
	'magenta': preload("res://scenes/Flowing/Magenta.tscn"),
	'purple': preload("res://scenes/Flowing/Purple.tscn"),
	'red': preload("res://scenes/Flowing/Red.tscn"),
	'white': preload("res://scenes/Flowing/White.tscn"),
	'empty': preload("res://scenes/Flowing/Empty.tscn")
}

onready var eyes = {
	'black': preload("res://scenes/Eyes/Black.tscn"),
	'blank' : preload("res://scenes/Eyes/Blank.tscn"),
	'blue': preload("res://scenes/Eyes/Blue.tscn"),
	'brown': preload("res://scenes/Eyes/Brown.tscn"),
	'green': preload("res://scenes/Eyes/Green.tscn"),
	'purple': preload("res://scenes/Eyes/Purple.tscn"),
	'red': preload("res://scenes/Eyes/Red.tscn"),
	'skyblue': preload("res://scenes/Eyes/SkyBlue.tscn"),
	'yellow': preload("res://scenes/Eyes/Yellow.tscn")
}

func _ready():
	var armor = armors[armorcolor].instance()
	var noble = nobles[noblecolor].instance()
	var elven = elvens[elvencolor].instance()
	var flowing = flowings[flowingcolor].instance()
	var eye = eyes[eyecolor].instance()
	
	armoranimationTree = armor.get_node('AnimationTree')
	nobleanimationTree = noble.get_node('AnimationTree')
	elvenanimationTree = elven.get_node('AnimationTree')
	flowinganimationTree = flowing.get_node('AnimationTree')
	eyeanimationTree = eye.get_node("AnimationTree")
	
	armoranimationPlayer = armor.get_node('AnimationPlayer')
	nobleanimationPlayer = noble.get_node('AnimationPlayer')
	elvenanimationPlayer = elven.get_node('AnimationPlayer')
	flowinganimationPlayer = flowing.get_node('AnimationPlayer')
	eyeanimationPlayer = eye.get_node("AnimationPlayer")
	
	armoranimationState = armoranimationTree.get("parameters/playback")
	nobleanimationState = nobleanimationTree.get("parameters/playback")
	elvenanimationState = elvenanimationTree.get("parameters/playback")
	flowinganimationState = flowinganimationTree.get("parameters/playback")
	eyeanimationState = eyeanimationTree.get("parameters/playback")
	
	armoranimationTree.active = true
	nobleanimationTree.active = true
	elvenanimationTree.active = true
	flowinganimationTree.active = true
	eyeanimationTree.active = true
	
	add_child(armor)
	add_child(noble)
	add_child(elven)
	add_child(flowing)
	add_child(eye)
	
	armor.position = Vector2(3.942, -14.999)
	noble.position = Vector2(3.942, -14.999)
	elven.position = Vector2(3.942, -14.999)
	flowing.position = Vector2(3.942, -14.999)
	eye.position = Vector2(3.942, -14.999)
	
	
