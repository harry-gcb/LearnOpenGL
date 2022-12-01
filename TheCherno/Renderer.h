#ifndef THECHERNO_OPENGL_RENDER_H_
#define THECHERNO_OPENGL_RENDER_H_

#include "glad/glad.h"
#include "GLFW/glfw3.h"

#include "VertexArray.h"
#include "IndexBuffer.h"
#include "Shader.h"


#define ASSERT(x) assert(x);
#define GLCall(x) GLClearError(); \
        x; \
        ASSERT(GLLogCall(#x, __FILE__, __LINE__))

void GLClearError();
bool GLLogCall(const char *function, const char *file, int line);

class Renderer {
public:
    Renderer() {};
    ~Renderer() {};

    void Clear() const;
    void Draw(const VertexArray &vao, const IndexBuffer &ibo, const Shader &shader) const;
private:
};

#endif
