#version 440 core

layout (location = 0) in vec3 position;
layout (location = 1) in vec2 texcoord;

out vec2 texposn;

uniform mat4 model;
uniform mat4 view;
uniform mat4 projection;

void main(void)
{
    gl_Position = projection * view * model * vec4(position, 1.0);
    texposn = texcoord;
}