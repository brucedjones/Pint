varying vec2 tcoord;
uniform sampler2D tex;
uniform vec4 col;
void main(void)
{
    vec4 thisCol = col*texture2D(tex,tcoord);
    if(thisCol.x*thisCol.x+thisCol.y+thisCol.y+thisCol.z*thisCol.z < 1.0) thisCol *= 0.0;
    gl_FragColor = thisCol;
}
