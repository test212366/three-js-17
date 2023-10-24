uniform float time;
varying vec2 vUv;
varying vec3 vPosition;
uniform vec2 pixels;
attribute vec3 color;
varying vec3 vColor;
varying float vDebug;
 

uniform vec3 uMin;
float PI = 3.1415926;
void main () {
	vUv = uv;
	vColor = color;

	vec3 newpos = position;
	vec4 originPos = modelMatrix * vec4(0., 0., 0., 1.0);
	vec4 axis = modelMatrix * vec4(0., 1., 0., 1.);

	
	
	vec3 direction = normalize(axis - originPos).xyz;

	float alignment = dot(cameraPosition, direction);

	alignment = max(0.3, pow(alignment, 6.0));
	vDebug = alignment;


	newpos.xyz = newpos.xyz * mix(smoothstep(0., 0.8, alignment), 0.5, vColor.r);

	newpos.xz = newpos.xz * mix( min(alignment, 2.5), 1., vColor.r);


	gl_Position = projectionMatrix * modelViewMatrix * vec4(newpos, 1.0);
}