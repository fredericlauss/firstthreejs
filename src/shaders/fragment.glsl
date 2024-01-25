float sum(float a, float b) {
    return a + b;
}

void main() {
    vec3 color = vec3(0.0, sum(0.5, 0.5), 1.0);
	gl_FragColor = vec4( color, 1.0 );
}