extends Area3D

@export var clicks_to_pop:int = 3
@export var size_increase:float = 0.2
@export var score_to_give:int = 1

func _ready():
	var XD = 1 * 0.2
	print(XD)
	
func _on_input_event(camera, event, position, normal, shape_idx):
	if event is InputEventMouseButton and event.button_index == MOUSE_BUTTON_LEFT and event.pressed:
		scale += Vector3.ONE * 0.2
		clicks_to_pop -= 1
		if clicks_to_pop == 0:
			get_parent()._increase_points(score_to_give)
			queue_free()


