#ifndef LEARNOPENGL_CAMERA_H_
#define LEARNOPENGL_CAMERA_H_

#include "glm/glm.hpp"
#include "glm/gtc/matrix_transform.hpp"

// Defines several possible options for camera movement. 
// Used as abstraction to stay away from window-system specific input methods
enum Camera_Movement {
    FORWARD,
    BACKWARD,
    LEFT,
    RIGHT
};

// Default camera values
const glm::vec3 POSITION = glm::vec3(0.0f, 0.0f, 0.0f);
const glm::vec3 UP = glm::vec3(0.0f, 1.0f, 0.0f);
const glm::vec3 FRONT = glm::vec3(0.0f, 0.0f, 1.0f);

const float YAW = -90.0f;
const float PITCH = 0.0f;
const float SPEED = 2.5f;
const float SENSITIVITY =  0.1f;
const float ZOOM = 45.0f;


// An abstract camera class that processes input and calculates the corresponding Euler Angles, 
// Vectors and Matrices for use in OpenGL
class Camera {
public:
    // constructor with vectors
    Camera(glm::vec3 position = POSITION, glm::vec3 up = UP, float pitch = PITCH, float yaw = YAW)
        : m_position(position), m_worldUp(up), m_pitch(pitch), m_yaw(yaw), m_front(FRONT), m_speed(SPEED), m_sensitivity(SENSITIVITY), m_zoom(ZOOM) {
        updateCameraVectors();
    }

    Camera(float posX, float posY, float posZ, float upX, float upY, float upZ, float pitch, float yaw)
        : m_front(FRONT), m_speed(SPEED), m_sensitivity(SENSITIVITY), m_zoom(ZOOM) {
        m_position = glm::vec3(posX, posY, posZ);
        m_worldUp = glm::vec3(upX, upY, upZ);
        m_pitch = pitch;
        m_yaw = yaw;
        updateCameraVectors();
    }

    glm::mat4 GetViewMatrix() {
        return glm::lookAt(m_position, m_position + m_front, m_up);
    }
    float GetFov() {
        return m_zoom;
    }
    glm::vec3 GetViewPos() const {
        return m_position;
    }

    void ProcessKeyboard(Camera_Movement direction, float deltaTime) {
        float velocity = m_speed * deltaTime;
        switch (direction) {
            case FORWARD:
                m_position += m_front * velocity;
                break;
            case BACKWARD:
                m_position -= m_front * velocity;
                break;
            case LEFT:
                m_position -= m_right * velocity;
                break;
            case RIGHT:
                m_position += m_right * velocity;
                break;
            default:
                break;
        }
    }

    void ProcessMouseMovement(float xoffset, float yoffset, GLboolean constrainPitch = true) {
        xoffset *= m_sensitivity;
        yoffset *= m_sensitivity;

        m_yaw += xoffset;
        m_pitch += yoffset;

        if (constrainPitch)
        {
            if (m_pitch > 89.0f)
                m_pitch = 89.0f;
            if (m_pitch < -89.0f)
                m_pitch = -89.0f;
        }

        updateCameraVectors();
    }

    void ProcessMouseScroll(float yoffset) {
        m_zoom -= (float)yoffset;
        if (m_zoom < 1.0f) {
            m_zoom = 1.0f;
        }
        if (m_zoom > 45.0f) {
            m_zoom = 45.0f;
        }
    }

private:
    void updateCameraVectors() {
        glm::vec3 front;
        front.x = cos(glm::radians(m_yaw)) * cos(glm::radians(m_pitch));
        front.y = sin(glm::radians(m_pitch));
        front.z = sin(glm::radians(m_yaw)) * cos(glm::radians(m_pitch));
        m_front = glm::normalize(front);

        m_right = glm::normalize(glm::cross(m_front, m_worldUp));
        m_up = glm::normalize(glm::cross(m_right, m_front));
    }

private:
    glm::vec3 m_position;
    glm::vec3 m_front;
    glm::vec3 m_up;
    glm::vec3 m_right;
    glm::vec3 m_worldUp;

    float m_yaw;
    float m_pitch;

    float m_speed;
    float m_sensitivity;
    float m_zoom;

};

#endif