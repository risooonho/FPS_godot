extends Spatial

func _ready():
	Input.set_mouse_mode(Input.MOUSE_MODE_CAPTURED)
	
# Para que en html5 capture el raton hay que hacerlo 
# tambien en la funcion _input 
func _input(event):
	Input.set_mouse_mode(Input.MOUSE_MODE_CAPTURED)

func _process(delta):
	if Input.is_action_just_pressed("ui_cancel"):
		Input.set_mouse_mode(Input.MOUSE_MODE_VISIBLE)
		get_tree().quit()
	if Input.is_action_just_pressed("reload"):
		get_tree().reload_current_scene()

func _physics_process(delta):
	print("FPS: ", Performance.get_monitor(Performance.TIME_FPS))
