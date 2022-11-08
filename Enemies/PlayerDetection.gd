extends Area2D

var player = null
var reached_destination: bool

func can_see_player():
	return player != null

func _on_PlayerDetection_body_entered(body):
	if body.is_in_group("Player"):
		player = body
		player.reached_destination = true
		get_parent().connect("enemy_died", player, "find_enemy")
func _on_PlayerDetection_body_exited(body):
	if player == body:
		get_parent().disconnect("enemy_died", player, "find_enemy")
		player = null
