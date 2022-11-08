extends Control

var health = max_health setget set_health
var max_health = 100 setget set_max_health

onready var health_bar = $healthbar

func set_health(value):
	health = clamp(value, 0, max_health)
	health_bar.value = health
	
func set_max_health(value):
	max_health = max(value, 1)
	#self.health = min(health, max_health)
	health_bar.max_value = max_health
	
func _ready():
	self.max_health = $Stats.max_health
	self.health = $Stats.health
	# warning-ignore:return_value_discarded
	$Stats.connect("health_changed", self, "set_health")
	# warning-ignore:return_value_discarded
	$Stats.connect("max_health_changed", self, "set_max_health")
