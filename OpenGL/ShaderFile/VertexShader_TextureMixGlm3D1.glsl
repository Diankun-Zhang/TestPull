#version 330 core
layout (Location = 0) in vec3 inPosition;
layout (Location = 1) in vec3 inColor;
layout (Location = 2) in vec2 inTexCoord;

out vec3 ourColor;
out vec2 vTexCoord;
uniform mat4 model;
uniform mat4 view;
uniform mat4 projection;

void main()
{
    gl_Position = projection * view * model * vec4(inPosition, 1.0);
    ourColor = inColor;
    vTexCoord = inTexCoord;
}
