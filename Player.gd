extends KinematicBody

export var speed = 10.0

func _fixed_process(delta):
	var dir = Vector3()
	
	if Input.is_action_pressed("ui_up"):
		dir += Vector3(0, 0, -1)
	if Input.is_action_pressed("ui_down"):
		dir += Vector3(0, 0, 1)
	if Input.is_action_pressed("ui_left"):
		dir += Vector3(-1, 0, 0)
	if Input.is_action_pressed("ui_right"):
		dir += Vector3(1, 0, 0)
	
	var t = get_transform()
	t.origin += dir * delta * speed
	set_transform(t)

func _ready():
	pass
