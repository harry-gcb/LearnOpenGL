#include "Renderer.h"
#include <iostream>

void GLClearError() {
    while (glGetError() != GL_NO_ERROR);
}

bool GLLogCall(const char *function, const char *file, int line) {
    while (GLenum error = glGetError()) {
        std::cout << "[OpenGL Error] (" << error << "): " << function << " " << file << ":" << line << std::endl;
        return false;
    }
    return true;
}

void Renderer::Clear() const {

    GLCall(glClearColor(0.2f, 0.3f, 0.3f, 1.0f));
    GLCall(glClear(GL_COLOR_BUFFER_BIT));
}

void Renderer::Draw(const VertexArray &vao, const IndexBuffer &ibo, const Shader &shader) const {
    vao.Bind();
    ibo.Bind();
    shader.Bind();
    GLCall(glDrawElements(GL_TRIANGLES, ibo.GetCount(), GL_UNSIGNED_INT, nullptr));
}
