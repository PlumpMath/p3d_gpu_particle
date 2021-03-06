#version 140
//#pragma include "inc_config.glsl"
//The line below is more or less the same as the one above,
//just using a custom parser to avoid re-writing the include file to hd
//Don't remove it!!!!
#define import 1

uniform mat4 p3d_ModelViewProjectionMatrix;
uniform mat4 p3d_ModelMatrixInverseTranspose;
uniform mat4 p3d_ModelMatrix;
in vec4 p3d_Vertex;
in vec3 p3d_Normal;

out vec3 normal;
out vec4 world_pos;

void main()
    {
    world_pos=p3d_ModelMatrix* p3d_Vertex;
    normal=(p3d_ModelMatrixInverseTranspose* vec4(p3d_Normal, 1.0)).xyz;
    gl_Position = p3d_ModelViewProjectionMatrix * p3d_Vertex;
    }
