// attribute are diff for each vertex // uniform are the same
// attribute vec3 position;

// uniform mat4 projectionMatrix;
// uniform mat4 modelViewMatrix;

// uniform mat4 modelMatrix;
// uniform mat4 viewMatrix;

// uniform float Utime;

void main() {
	// transform => position, scale and rotation
	// modelMatrix => position, scale and rotation of model
	// wiewMatrix => position, orientation of caméra
	// projectionMatrix => project our object into screan ( aspect ratio and perspective)

	// MVP ( order maters)
	// gl_Position = projectionMatrix * viewMatrix * modelMatrix * vec4( position, 1.0 );

	vec4 modelViewPosition = modelViewMatrix * vec4( position, 1.0 );
	vec4 projectedPosition = projectionMatrix * modelViewPosition;
	gl_Position = projectedPosition;
}