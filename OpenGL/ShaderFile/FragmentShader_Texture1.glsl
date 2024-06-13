#version 330 core
out vec4 FragColor;
uniform sampler2D Texture1;


in vec3 ourColor;
in vec2 TexCoord;

void main()
{
    FragColor = texture(Texture1, TexCoord) * vec4(ourColor, 1.0);
}