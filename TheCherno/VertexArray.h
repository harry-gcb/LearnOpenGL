#ifndef THECHERNO_OPENGL_VERTEXARRA_H_
#define THECHERNO_OPENGL_VERTEXARRA_H_

#include "VertexBuffer.h"

class VertexBufferLayout;
class VertexArray {
public:
    VertexArray();
    ~VertexArray();

    void Bind() const;
    void UnBind() const;

    void AddBuffer(const VertexBuffer &vbo, const VertexBufferLayout &layout);
private:
    unsigned int m_RendererID;
};

#endif