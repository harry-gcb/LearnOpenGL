#include "glad/glad.h"
#include "GLFW/glfw3.h"

#include "Renderer.h"
#include "VertexBuffer.h"
#include "IndexBuffer.h"
#include "VertexArray.h"
#include "VertexBufferLayout.h"
#include "Shader.h"
#include <iostream>

const unsigned int SRC_WIDTH  = 800;
const unsigned int SRC_HEIGHT = 600;

void processInput(GLFWwindow *window);
void framebuffer_size_callback(GLFWwindow* window, int width, int height);

int main(int argc, char *argv[]) {
    glfwInit();

#if 1
    glfwWindowHint(GLFW_CONTEXT_VERSION_MAJOR, 3);
    glfwWindowHint(GLFW_CONTEXT_VERSION_MINOR, 3);
    glfwWindowHint(GLFW_OPENGL_PROFILE, GLFW_OPENGL_CORE_PROFILE);
#endif

    GLFWwindow *window = glfwCreateWindow(SRC_WIDTH, SRC_HEIGHT, "learnopengl", nullptr, nullptr);
    if (nullptr == window) {
        std::cout << "Failed to create GLFW window" << std::endl;
        glfwTerminate();
        return -1;
    }

    glfwMakeContextCurrent(window);
    glfwSetFramebufferSizeCallback(window, framebuffer_size_callback);
    glfwSwapInterval(1);

    if (!gladLoadGLLoader((GLADloadproc)glfwGetProcAddress)) {
        std::cout << "Failed to initialize GLAD" << std::endl;
        return -1;
    }

    float vertices[] = {
        -0.5f, -0.5f, 0.0f, // left
         0.5f, -0.5f, 0.0f, // right
         0.5f,  0.5f, 0.0f, // top
        -0.5f,  0.5f, 0.0f,
        //-0.5f, -0.5f, 0.0f,
        // 0.5f,  0.5f, 0.0f,
    };

    unsigned int indices[] = {
        0, 1, 2,
        2, 3, 0, 
    };

    {
        VertexBuffer VBO(vertices, sizeof(vertices));

        VertexArray VAO;
        VertexBufferLayout layout;
        layout.Push<float>(3);
        VAO.AddBuffer(VBO, layout);

        IndexBuffer IBO(indices, 6);

        Shader shader("res/shaders/basic/basic.shader");
        shader.Bind();

        // shader.SetUniform4f("u_Color", 0.8f, 0.3f, 0.8f, 1.0f);

        // VAO.UnBind();
        // VBO.UnBind();
        // IBO.UnBind();
        // shader.UnBind();

        Renderer renderer;

        float r = 0.0f;
        float increment = 0.05f;
        while (!glfwWindowShouldClose(window)) {

            processInput(window);

            renderer.Clear();
            shader.Bind();
            shader.SetUniform4f("u_Color", r, 0.3f, 0.8f, 1.0f);
            renderer.Draw(VAO, IBO, shader);

            if (r > 1.0f) {
                increment = -0.05f;
            }
            else if (r < 0.0f) {
                increment = 0.05f;
            }
            r += increment;

            glfwSwapBuffers(window);
            glfwPollEvents();
        }
    }

    glfwTerminate();
}

// process all input: query GLFW whether relevant keys are pressed/released this frame and react accordingly
// ---------------------------------------------------------------------------------------------------------
void processInput(GLFWwindow *window)
{
    if (glfwGetKey(window, GLFW_KEY_ESCAPE) == GLFW_PRESS)
        glfwSetWindowShouldClose(window, true);
}

// glfw: whenever the window size changed (by OS or user resize) this callback function executes
// ---------------------------------------------------------------------------------------------
void framebuffer_size_callback(GLFWwindow* window, int width, int height)
{
    // make sure the viewport matches the new window dimensions; note that width and 
    // height will be significantly larger than specified on retina displays.
    glViewport(0, 0, width, height);
}