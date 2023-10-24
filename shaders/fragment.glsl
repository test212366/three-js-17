uniform float time;
uniform float progress;
uniform sampler2D texture1;
uniform vec4 resolution;
varying vec2 vUv;
varying vec3 vPosition;
varying vec3 vColor;
varying float vDebug;

float PI = 3.1415926;
void main() {
	vec3 color = vec3(213./255., 127./255.,70./255.);

	gl_FragColor = vec4(vec3(vColor.r * color), 1.);
	// gl_FragColor = vec4(vec3(1.), 1.);
	// gl_FragColor = vec4(vec3(vDebug), 1.);


}