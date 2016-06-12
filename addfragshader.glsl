varying vec2 tcoord;
uniform sampler2D tex;
uniform sampler2D tex2;
void main(void)
{
    vec4 col1 = vec4(1);
    col1 = texture2D(tex,tcoord);

    vec4 col2 = vec4(1);
    col2 = texture2D(tex2,tcoord);

    vec4 col_out = vec4(1);
    if(col1.x+col1.y+col1.z>col2.x+col2.y+col2.z)
    {
      col_out = col1;
    }
    else
    {
      col_out = col2;
    }

    gl_FragColor = col_out;
}
