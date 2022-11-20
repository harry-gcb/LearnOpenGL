#ifndef THECHRONO_OPENGL_VERTEXBUFFER_H_
#define THECHRONO_OPENGL_VERTEXBUFFER_H_

class VertexBuffer {
public:
    VertexBuffer(const void *data, unsigned int size);
    ~VertexBuffer();

    void Bind() const;
    void UnBind() const;
private:
    unsigned int m_RendererID;
};

#endif