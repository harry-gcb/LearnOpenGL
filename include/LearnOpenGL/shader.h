#ifndef LEARNOPENGL_SHADER_H_
#define LEARNOPENGL_SHADER_H_

#include <string>
#include <fstream>
#include <sstream>
#include <iostream>

#include "glad/glad.h"
#include "glm/glm.hpp"

#define VERTEX_SHADER   "VERTEX"
#define FRAGMENT_SHADER "FRAGMENT"
#define PROGRAM_SHADER  "PROGRAM"

class Shader {
public:
    // constructor generates the shader on the fly
    Shader(const std::string &vertexShaderPath, const std::string &fragmentShaderPath) {
        unsigned int vertexShader = createShader(vertexShaderPath, VERTEX_SHADER);
        unsigned int fragmentShader = createShader(fragmentShaderPath, FRAGMENT_SHADER);
        m_ID = glCreateProgram();
        glAttachShader(m_ID, vertexShader);
        glAttachShader(m_ID, fragmentShader);
        glLinkProgram(m_ID);
        checkErrors(m_ID, PROGRAM_SHADER);
        glDeleteShader(vertexShader);
        glDeleteShader(fragmentShader);
    }
    void use() {
        glUseProgram(m_ID);
    }
    void unuse() {
        glUseProgram(0);
    }
    // utility uniform functions
    // ------------------------------------------------------------------------
    void setBool(const std::string &name, bool value) const
    {         
        glUniform1i(glGetUniformLocation(m_ID, name.c_str()), (int)value); 
    }
    // ------------------------------------------------------------------------
    void setInt(const std::string &name, int value) const
    { 
        glUniform1i(glGetUniformLocation(m_ID, name.c_str()), value); 
    }
    // ------------------------------------------------------------------------
    void setFloat(const std::string &name, float value) const
    { 
        glUniform1f(glGetUniformLocation(m_ID, name.c_str()), value); 
    }

    void setMat4(const std::string &name, glm::mat4 &mat) {
        glUniformMatrix4fv(glGetUniformLocation(m_ID, name.c_str()), 1, GL_FALSE, glm::value_ptr<float>(mat));
    }

private:
    unsigned int createShader(const std::string &shaderPath, const std::string &type) {
        std::string shaderCode;
        std::ifstream shaderFile;
        shaderFile.exceptions(std::ifstream::failbit | std::ifstream::badbit);
        try {
            // open files
            std::stringstream shaderStream;
            shaderFile.open(shaderPath);
            shaderStream << shaderFile.rdbuf();
            shaderCode = shaderStream.str();
            shaderFile.close();
        } catch (std::ifstream::failure &e) {
            std::cout << "ERROR::SHADER::FILE_NOT_SUCCESSFULLY_READ::" << type << "::[" << shaderPath << "]: " << e.what() << std::endl;
        }
        const char *shaderData = shaderCode.c_str();

        unsigned int shader;
        if (type == VERTEX_SHADER) {
            shader = glCreateShader(GL_VERTEX_SHADER);
        } else if (type == FRAGMENT_SHADER) {
            shader = glCreateShader(GL_FRAGMENT_SHADER);
        } else {
            return 0;
        }
        glShaderSource(shader, 1, &shaderData, nullptr);
        glCompileShader(shader);
        checkErrors(shader, type);
        return shader;
    }
    void checkErrors(unsigned int shader, const std::string &type) {
        int success;
        char infoLog[1024] = { 0 };
        if (type != "PROGRAM") {
            glGetShaderiv(shader, GL_COMPILE_STATUS, &success);
            if (!success) {
                glGetShaderInfoLog(shader, sizeof(infoLog), nullptr, infoLog);
                std::cout << "ERROR::SHADER::" << type << "::COMPILATION_ERROR: " << infoLog << std::endl;
            }
        } else {
            glGetProgramiv(shader, GL_LINK_STATUS, &success);
            if (!success) {
                glGetProgramInfoLog(shader, sizeof(infoLog), nullptr, infoLog);
                std::cout << "ERROR::PROGRAM::" << type << "::LINK_ERROR: " << infoLog << std::endl;
            }
        }
    }
private:
    unsigned int m_ID;
};

#endif 