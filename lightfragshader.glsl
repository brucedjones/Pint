varying vec2 tcoord;
uniform sampler2D tex;
uniform vec2 texelsize;
void main(void)
{
	vec4 col = vec4(1);
	col = texture2D(tex,tcoord);
	const vec4 W = vec4(0.2125, 0.7154, 0.0721,0.0);
	float luminance = dot(col, W);
	vec4 col_out = vec4(0);
	if(luminance>0.8) col_out = col;
	gl_FragColor = col_out;
}
