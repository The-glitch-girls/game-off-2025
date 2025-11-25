extends Node2D

# TODO>
# creación aleatoria de puntos
# creación de la onda
# reinicios
# colisiones y resultados

@onready var point_scene = preload("res://scenes/Point.tscn")

var start_point
var target_point
var goal_point

func _ready() -> void:
	spawn_points()
	# TODO: esperar 0.3 , mostrar onda
	
func spawn_points():
	# Crear punto de inicio de forma aleatoria
	start_point = point_scene.instantiate()
	start_point.point_type = "start"
	start_point.position = get_random_position()
	add_child(start_point)

func get_random_position():
	return Vector2(
		randi_range(100, 1180),
		randi_range(100, 620)
	)
