
	//
	vec3 coordinates = normal;
    coordinates.y += uTime;
    vec3 noisePatern = vec3(noise(coordinates));
    float pattern = wave(noisePatern);
	vDisplacement = pattern;

	// varyings
	vDisplacement = pattern;

    float vDisplacement = vDisplacement / 3.0;
    
    transformed += normalize(objectNormal) * vDisplacement;