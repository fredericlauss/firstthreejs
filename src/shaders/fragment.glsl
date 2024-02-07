// float sum(float a, float b) {
//     return a + b;
// }

// i can use uniform here but float need precision and can't use attribute here ( it's for vertex stuff )
// precision mediump float;
uniform float uTime;

varying vec3 vPosition;
varying vec3 vNormals;
varying vec2 vUv;

void main() {
    // vec3 color = vec3(0.0, sum(0.0, 0.0), 1.0);

    // //operator
    // vec2 myVector = color.xx / vec2(2.0, 2.0);
    // color *= vec3(0.0, 0.0, 1.0);
    // // modulo
    // float myFloat = mod(color.x, 2.0);
    // //abs
    // // min, max
    // // sin, cos, tan, atan
    // // dat, cross
    // // clamp(-0.1, 0, 1); -0.1 will be 0 ( 0 min value, 1 is max )
    // // step, smoothstep, fract

    // bvec3 isEqual = equal(vec3(1.0, 1.0, 0.0), vec3(0.0, 1.0, 0.0));
    // // we could do that 
    // // gl_FragColor = vec4( isEqual, 1.0 );

    // // rgba = xyzw 
    // color.x = 1.0;
    // color.r = 0.0;

    // // if you want to change mare than one value
    // color.grb = vec3(1.0, 0.0, 1.0);

	// gl_FragColor = vec4( color.xyz, 1.0 );
    // gl_FragColor = vec4( mix(vec3(0.0), vec3(1.0), vUv.x), 1.0 );
    // gl_FragColor = vec4( vUv.xxx, 1.0 );
    gl_FragColor = vec4( 1.0, 0.0, 0.0, 1.0 );
}