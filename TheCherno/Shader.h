#ifndef THECHERNO_OPENGL_SHADER_H_
#define THECHERNO_OPENGL_SHADER_H_

#include <string>
#include <unordered_map>

struct ShaderProgramSource {
    std::string vertexSource;
    std::string fragmentSource;
};

class Shader {
public:
    Shader(const std::string &filepath);
    ~Shader();

    void Bind() const;
    void UnBind() const;

    // set uniform
    void SetUniform4f(const std::string &name, float v0, float v1, float v2, float v3);
    
private:
    unsigned int GetUniformLocation(const std::string &name);
    ShaderProgramSource ParseShader(const std::string &filepath);
    unsigned int CompileShader(const std::string &source, unsigned int type);
    unsigned int CreateShader(const std::string &vertexShader, const std::string &fragmentShader);
private:
    std::string  m_FilePath;
    unsigned int m_RendererID;
    std::unordered_map<std::string, unsigned int> m_LocationCache;
    
};

#endif