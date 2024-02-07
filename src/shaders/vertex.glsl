// attribute are diff for each vertex // uniform are the same
// attribute vec3 position;

// uniform mat4 projectionMatrix;
// uniform mat4 modelViewMatrix;

// uniform mat4 modelMatrix;
// uniform mat4 viewMatrix;

// uniform float Utime;

uniform float uTime;

varying vec3 vPosition;
varying vec3 vNormals;
varying vec2 vUv;

void main() {

	vPosition = position;
	vNormals = normal;
	vUv = uv;

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