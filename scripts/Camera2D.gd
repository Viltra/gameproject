extends Camera2D

var is_panning = true;
var cam_spd = 10

onready var editor = get_node("/root/World/Cam_container")
onready var editor_cam = editor.get_node("Camera2D")

func _ready():
	editor_cam.current = true
	
func _process(_delta):
	
	move_editor()
	is_panning = Input.is_action_pressed("mb_left")
	pass
	
func move_editor():
	if Input.is_action_pressed("w"):
		editor.global_position.y -= cam_spd
	if Input.is_action_pressed("a"):
		editor.global_position.x -= cam_spd
	if Input.is_action_pressed("s"):
		editor.global_position.y += cam_spd
	if Input.is_action_pressed("d"):
		editor.global_position.x += cam_spd
	pass
	
func _unhandled_input(event):
	if(event is InputEventMouseButton):
		if(event.is_pressed()):
			if(event.button_index == BUTTON_WHEEL_UP):
				editor_cam.zoom += Vector2(0.1,0.1)
			if(event.button_index == BUTTON_WHEEL_DOWN):
				editor_cam.zoom += Vector2(0.1,0.1)
	if(event is InputEventMouseMotion):
		if(is_panning):
			editor.global_position -= event.relative * editor_cam.zoom
	pass
