#include <cmath>
#include <iostream>

#include "eigen3/Eigen/Core"
#include "eigen3/Eigen/Dense"

int main(int argc, char *argv[]) {
    // basic example of cpp
    std::cout << "example of cpp" << std::endl;
    float a = 1.0f;
    float b = 2.0f;
    std::cout << a << std::endl;
    std::cout << a/b << std::endl;
    std::cout << std::sqrt(b) << std::endl;
    std::cout << std::acos(-1) << std::endl;
    std::cout << std::sin(30.0/180.0*std::acos(-1)) << std::endl;

    // example of vector
    std::cout << "example of vector" << std::endl;
    Eigen::Vector3f v(1.0f, 2.0f, 3.0f);
    Eigen::Vector3f w(1.0f, 0.0f, 0.0f);
    // vector output
    std::cout << "example of output" << std::endl;
    std::cout << v << std::endl;
    // vector add
    std::cout << "example of add" << std::endl;
    std::cout << v + w << std::endl;
    // vector scale multiply
    std::cout << "example of scale multiply" << std::endl;
    std::cout << v * 3.0f << std::endl;
    std::cout << 2.0f * v << std::endl;

    // example of matrix
    std::cout << "example of matrix" << std::endl;
    // Eigen definition
    Eigen::Matrix3f i, j;
    i << 1.0, 2.0, 3.0, 4.0, 5.0, 6.0, 7.0, 8.0, 9.0;
    j << 2.0, 3.0, 1.0, 4.0, 6.0, 5.0, 9.0, 7.0, 8.0;
    // matrix output
    std::cout << "example of matrix" << std::endl;
    std::cout << i << std::endl;

    std::cout << "example of matrix add" << std::endl;
    std::cout << i + j << std::endl;

    std::cout << "example of matrix scalar multiply" << std::endl;
    std::cout << i * 2.0 << std::endl;

    std::cout << "exmpale of matrix multiply" << std::endl;
    std::cout << i * j << std::endl;

    std::cout << "exmple of matrix multiply vector" << std::endl;
    std::cout << i * v << std::endl;

    std::cout << "result of homework" << std::endl;
    float coord = std::sqrt(2.0f)/2.0f;
    Eigen::Vector3f P(2.0f, 1.0f, 0.0f);
    Eigen::Matrix3f transformation;
    transformation << coord, -coord, 1.0f,
                      coord,  coord, 2.0f,
                      0,      0,     1;
    std::cout << transformation * P << std::endl;
    return 0;
}
