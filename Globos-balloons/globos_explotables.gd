extends Node3D

var score:int = 0
@onready var score_text:Label = $Label

func _increase_points(points):
	score += points
	score_text.text = str("Score: ", score)
	print(score)

