#version 330 core

out vec4 fragColor;

in vec3 ourColor;
in vec2 texCoord;

uniform sampler2D texture0;
uniform sampler2D texture1;

void main()
{
    fragColor = mix(texture(texture0, texCoord), texture(texture1, vec2(1.0-texCoord.x, texCoord.y)), 0.2);
}