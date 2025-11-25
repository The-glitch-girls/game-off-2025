extends Node2D

# Prefab para utilizar:
# > punto de inicio (verde) - start
# > punto destino invisible (amarillo) - target
# > punto meta (morado) - goal

@export var point_type: String = "start" # start | target | goal
@export var radius: float = 12.0
	
func _ready():
	if has_method("update"):
		call_deferred("update")
	else:
		print("Método update() no existe")

func _draw():
	var color: Color
	match point_type:
		"start":
			color = Color("#A7E399") # verde neon
			draw_circle(Vector2.ZERO, radius, color)
		"target":
			color = Color("#F6FF99") # amarillo
			#$Circle.visible = false
		"goal":
			color = Color("#B771E5") # morado
			draw_circle(Vector2.ZERO, radius, color)
		_:
			color = Color.WHITE
			draw_circle(Vector2.ZERO, radius, color)
