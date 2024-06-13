#version 330 core
layout (Location = 0) in vec3 inPosition;
layout (Location = 1) in vec3 inNormal;
layout (Location = 2) in vec2 inTexCoord;

out vec3 Normal;
out vec3 FragPos;
out vec2 TexCoord;

uniform mat4 model;
uniform mat4 view;
uniform mat4 projection;

void main()
{
    FragPos = vec3(model * vec4(inPosition, 1.0));
    Normal = mat3(transpose(inverse(model))) * inNormal;
    TexCoord = inTexCoord;
    gl_Position = projection * view * model * vec4(inPosition, 1.0);
}