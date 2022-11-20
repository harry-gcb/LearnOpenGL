#ifndef THECHRONO_OPENGL_INDEXBUFFER_H_
#define THECHRONO_OPENGL_INDEXBUFFER_H_

class IndexBuffer {
public:
    IndexBuffer(const unsigned int *data, unsigned int count);
    ~IndexBuffer();

    void Bind() const;
    void UnBind() const;

    inline unsigned int GetCount() const {
        return m_Count;
    }
private:
    unsigned int m_RendererID;
    unsigned int m_Count;
};

#endif