extends Node

onready var enemies = get_tree().get_nodes_in_group("enemies")

func connect_to_enemies():
	for member in enemies:
		var _ConnectingEnemy = member
		member.connect("enemy_died", $Player, "find_enemy")
		
func repath():
	  $Player.generate_path()
