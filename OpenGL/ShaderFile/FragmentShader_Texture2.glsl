#version 330 core
out vec4 FragColor;
uniform sampler2D Texture1;
uniform sampler2D Texture2;


in vec3 ourColor;
in vec2 TexCoord;

void main()
{
    FragColor = texture(Texture2, TexCoord);
}