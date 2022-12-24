#include "Triangle.hpp"
#include "rasterizer.hpp"
#include <eigen3/Eigen/Eigen>
#include <iostream>
#include <opencv2/opencv.hpp>
#include <cmath>

constexpr double MY_PI = 3.1415926;

Eigen::Matrix4f get_rotation(Eigen::Vector3f axis, float angle) {
    angle = angle / 180.0 * MY_PI;
    Eigen::Matrix4f rotation = Eigen::Matrix4f::Identity();
    float x = axis.x();
    float y = axis.y();
    float z = axis.z();
    float c = std::cos(angle);
    float s = std::sin(angle);

    Eigen::Matrix4f trans;
    trans << c + x * x * (1 - c), x* y* (1 - c) - z * s, x* z* (1 - c) + y * s, 0.0f,
        y* x* (1 - c) + z * s, c + y * y * (1 - c), y* z* (1 - c) - x * s, 0.0f,
        z* x* (1 - c) - y * s, z* y* (1 - c) + x * s, c + z * z * (1 - c), 0.0f,
        0.0f, 0.0f, 0.0f, 1.0f;

    rotation = trans * rotation;
    return rotation;
}

Eigen::Matrix4f get_view_matrix(Eigen::Vector3f eye_pos)
{
    Eigen::Matrix4f view = Eigen::Matrix4f::Identity();

    Eigen::Matrix4f translate;
    translate << 1, 0, 0, -eye_pos[0], 0, 1, 0, -eye_pos[1], 0, 0, 1,
        -eye_pos[2], 0, 0, 0, 1;

    view = translate * view;

    return view;
}

Eigen::Matrix4f get_model_matrix(float rotation_angle)
{
    rotation_angle = rotation_angle / 180.0 * MY_PI;
    Eigen::Matrix4f model = Eigen::Matrix4f::Identity();

    // Implement this function
    // Create the model matrix for rotating the triangle around the Z axis.
    // Then return it.
    Eigen::Matrix4f trans;
    trans << std::cos(rotation_angle), -1 * std::sin(rotation_angle), 0.0f, 0.0f,
             std::sin(rotation_angle), std::cos(rotation_angle), 0.0f, 0.0f,
             0.0f, 0.0f, 1.0f, 0.0f,
             0.0f, 0.0f, 0.0f, 1.0f;

    model = trans * model;

    return model;
}

Eigen::Matrix4f get_projection_matrix(float eye_fov, float aspect_ratio,
                                      float zNear, float zFar)
{
    // Students will implement this function

    Eigen::Matrix4f projection = Eigen::Matrix4f::Identity();

    // Implement this function
    // Create the projection matrix for the given parameters.
    // Then return it.
    Eigen::Matrix4f persp;
    persp << zNear, 0.0f, 0.0f, 0.0f,
             0.0f, zNear, 0.0f, 0.0f,
             0.0f, 0.0f, zNear + zFar, -1 * zNear * zFar,
             0.0f, 0.0f,  1.0f, 0.0f;
    float half_eye_fov = eye_fov / 2 / 180.0f * MY_PI;
    float top = zNear * std::tan(half_eye_fov);
    float left = top * aspect_ratio;
    float bottom = -1 * top;
    float right = -1 * left;

    Eigen::Matrix4f ortho_trans;
    ortho_trans << 1.0f, 0.0f, 0.0f, -1 * (left + right) / 2.0f,
                   0.0f, 1.0f, 0.0f, -1 * (top + bottom) / 2.0f,
                   0.0f, 0.0f, 1.0f, -1 * (zNear + zFar) / 2.0f,
                   0.0f, 0.0f, 0.0f, 1.0f;
    
    Eigen::Matrix4f ortho_scale;
    ortho_scale << 2 / (left - right), 0.0f, 0.0f, 0.0f,
                   0.0f, 2 / (top - bottom), 0.0f, 0.0f,
                   0.0f, 0.0f, 2 / (zFar - zNear), 0.0f,
                   0.0f, 0.0f, 0.0f, 1.0f;

    projection = ortho_scale * ortho_trans * persp * projection;
    return projection;
}

int main(int argc, const char** argv)
{
    float angle = 0;
    bool command_line = false;
    std::string filename = "output.png";

    if (argc >= 3) {
        command_line = true;
        angle = std::stof(argv[2]); // -r by default
        if (argc == 4) {
            filename = std::string(argv[3]);
        }
        else
            return 0;
    }

    rst::rasterizer r(700, 700);

    Eigen::Vector3f eye_pos = {0, 0, 5};

    std::vector<Eigen::Vector3f> pos{{2, 0, -2}, {0, 2, -2}, {-2, 0, -2}};

    std::vector<Eigen::Vector3i> ind{{0, 1, 2}};

    auto pos_id = r.load_positions(pos);
    auto ind_id = r.load_indices(ind);

    int key = 0;
    int frame_count = 0;

    if (command_line) {
        r.clear(rst::Buffers::Color | rst::Buffers::Depth);

        r.set_model(get_model_matrix(angle));
        r.set_view(get_view_matrix(eye_pos));
        r.set_projection(get_projection_matrix(45, 1, 0.1, 50));

        r.draw(pos_id, ind_id, rst::Primitive::Triangle);
        cv::Mat image(700, 700, CV_32FC3, r.frame_buffer().data());
        image.convertTo(image, CV_8UC3, 1.0f);

        cv::imwrite(filename, image);

        return 0;
    }

    while (key != 27) {
        r.clear(rst::Buffers::Color | rst::Buffers::Depth);

        r.set_model(get_model_matrix(angle));
        r.set_view(get_view_matrix(eye_pos));
        r.set_projection(get_projection_matrix(45, 1, 0.1, 50));

        r.draw(pos_id, ind_id, rst::Primitive::Triangle);

        cv::Mat image(700, 700, CV_32FC3, r.frame_buffer().data());
        image.convertTo(image, CV_8UC3, 1.0f);
        cv::imshow("image", image);
        key = cv::waitKey(10);

        std::cout << "frame count: " << frame_count++ << '\n';

        if (key == 'a') {
            angle += 10;
        }
        else if (key == 'd') {
            angle -= 10;
        }
    }

    return 0;
}
