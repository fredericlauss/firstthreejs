// attribute are diff for each vertex // uniform are the same
attribute vec3 position;

uniform mat4 projectionMatrix;
uniform mat4 modelViewMatrix;

// uniform float Utime;

void main() {
	gl_Position = projectionMatrix * modelViewMatrix * vec4( position, 1.0 );
}