varying vec2 tcoord;
uniform sampler2D tex;
uniform sampler2D tex2;
void main(void)
{
    vec4 col1 = vec4(1);
    col1 = texture2D(tex,tcoord);

    vec4 col2 = vec4(1);
    col2 = texture2D(tex2,tcoord);

    gl_FragColor = max(col1,col2);
}
