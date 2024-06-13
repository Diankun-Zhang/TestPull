#version 330 core
out vec4 FragColor;

uniform vec3 lightColor;
uniform vec3 cubeColor;

void main()
{
    FragColor = vec4((cubeColor * lightColor),1.0);
}