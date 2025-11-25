extends Node2D

# Prefab para utilizar:
# > punto de inicio (verde) - start
# > punto destino invisible (amarillo) - target
# > punto meta (morado) - goal

@export var point_type: String = "start" # start | target | goal

func _ready():
	var mat : ShaderMaterial = $Circle.material
	if point_type == "start":
		mat.set("shader_parameter/color", Color("#A7E399")) # verde neon
	elif point_type == "target":
		mat.set("shader_parameter/color", Color("#F6FF99")) # amarillo
		$Circle.visible = false
	elif point_type == "goal":
		mat.set("shader_parameter/color", Color("#B771E5")) # morado
