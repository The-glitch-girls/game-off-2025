shader_type canvas_item;

uniform vec4 color : source_color = vec4(1.0);
uniform float glow_strength = 0.4;
uniform float glow_size = 0.15;

void vertex() {
	// Called for every vertex the material is visible on.
}

// Usa la textura original como base
void fragment() {
	vec2 uv = UV * 2.0 - 1.0; // centramos UV en (0,0)
	float dist = length(uv);

	// círculo (borde suave)
	float circle = 1.0 - smoothstep(0.9, 1.0, dist);

	// glow hacia afuera
	float glow = smoothstep(0.9, 1.0 + glow_size, dist) * glow_strength;

	vec4 tex = texture(TEXTURE, UV);

	// Máscara circular sobre la textura
	float alpha = tex.a * circle;

	vec3 final_color = color.rgb * alpha;
	final_color += color.rgb * glow; // glow

	COLOR = vec4(final_color, alpha);
}


//void light() {
//	// Called for every pixel for every light affecting the CanvasItem.
//	// Uncomment to replace the default light processing function with this one.
//}
