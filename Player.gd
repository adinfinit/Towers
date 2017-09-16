extends KinematicBody

export var speed = 10.0

func _fixed_process(delta):
	var dir = Vector3()
	
	if Input.is_action_pressed("move_forward"):
		dir += Vector3(0, 0, -1)
	if Input.is_action_pressed("move_backwards"):
		dir += Vector3(0, 0, 1)
	if Input.is_action_pressed("move_left"):
		dir += Vector3(-1, 0, 0)
	if Input.is_action_pressed("move_right"):
		dir += Vector3(1, 0, 0)
	
	var t = get_transform()
	t.origin += dir.normalized() * delta * speed
	set_transform(t)

func _ready():
	pass
