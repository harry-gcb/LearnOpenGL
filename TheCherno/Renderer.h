#ifndef THECHERNO_OPENGL_RENDER_H_
#define THECHERNO_OPENGL_RENDER_H_

#include "glad/glad.h"
#include "GLFW/glfw3.h"


#define ASSERT(x) if (!(x)) __debugbreak();
#define GLCall(x) GLClearError(); \
        x; \
        ASSERT(GLLogCall(#x, __FILE__, __LINE__))

void GLClearError();
bool GLLogCall(const char *function, const char *file, int line);

#endif