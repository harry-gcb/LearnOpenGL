
include_directories($ENV{LIB_3RDPARTY_PATH}/glad/include) # glad
include_directories($ENV{LIB_3RDPARTY_PATH}/glfw/include) # glfw
include_directories($ENV{LIB_3RDPARTY_PATH}/stb) # stb_image
include_directories($ENV{LIB_3RDPARTY_PATH}/glm) # glm
include_directories(${CMAKE_SOURCE_DIR}/include) # LearnOpenGL

# lib
link_directories($ENV{LIB_3RDPARTY_PATH}/glfw/lib)


set(LEARN_OPENGL_DIR ${CMAKE_SOURCE_DIR}/LearnOpenGL)

# getting_started/hello_window
add_executable(hello_window
${GLAD_SOURCE_DIR}/glad.c
${LEARN_OPENGL_DIR}/getting_started/hello_window/hello_window.cpp)
target_link_libraries(hello_window glfw3)

# getting_started/hello_window_clear
add_executable(hello_window_clear
${GLAD_SOURCE_DIR}/glad.c
${LEARN_OPENGL_DIR}/getting_started/hello_window_clear/hello_window_clear.cpp)
target_link_libraries(hello_window_clear glfw3)

# getting_started/hello_triangle
add_executable(hello_triangle
${GLAD_SOURCE_DIR}/glad.c
${LEARN_OPENGL_DIR}/getting_started/hello_triangle/hello_triangle.cpp)
target_link_libraries(hello_triangle glfw3)

# getting_started/hello_triangle_indexed
add_executable(hello_triangle_indexed
${GLAD_SOURCE_DIR}/glad.c
${LEARN_OPENGL_DIR}/getting_started/hello_triangle_indexed/hello_triangle_indexed.cpp)
target_link_libraries(hello_triangle_indexed glfw3)

# getting_started/hello_triangle_exercise1
add_executable(hello_triangle_exercise1
${GLAD_SOURCE_DIR}/glad.c
${LEARN_OPENGL_DIR}/getting_started/hello_triangle_exercise1/hello_triangle_exercise1.cpp)
target_link_libraries(hello_triangle_exercise1 glfw3)

# getting_started/hello_triangle_exercise2
add_executable(hello_triangle_exercise2
${GLAD_SOURCE_DIR}/glad.c
${LEARN_OPENGL_DIR}/getting_started/hello_triangle_exercise2/hello_triangle_exercise2.cpp)
target_link_libraries(hello_triangle_exercise2 glfw3)

# getting_started/hello_triangle_exercise3
add_executable(hello_triangle_exercise3
${GLAD_SOURCE_DIR}/glad.c
${LEARN_OPENGL_DIR}/getting_started/hello_triangle_exercise3/hello_triangle_exercise3.cpp)
target_link_libraries(hello_triangle_exercise3 glfw3)

# getting_started/shaders_basic
add_executable(shaders_basic
${GLAD_SOURCE_DIR}/glad.c
${LEARN_OPENGL_DIR}/getting_started/shaders_basic/shaders_basic.cpp)
target_link_libraries(shaders_basic glfw3)

# getting_started/shaders_uniform
add_executable(shaders_uniform
${GLAD_SOURCE_DIR}/glad.c
${LEARN_OPENGL_DIR}/getting_started/shaders_uniform/shaders_uniform.cpp)
target_link_libraries(shaders_uniform glfw3)

# getting_started/shaders_interpolation
add_executable(shaders_interpolation
${GLAD_SOURCE_DIR}/glad.c
${LEARN_OPENGL_DIR}/getting_started/shaders_interpolation/shaders_interpolation.cpp)
target_link_libraries(shaders_interpolation glfw3)

# getting_started/shaders_class
add_executable(shaders_class
${GLAD_SOURCE_DIR}/glad.c
${LEARN_OPENGL_DIR}/getting_started/shaders_class/shaders_class.cpp)
target_link_libraries(shaders_class glfw3)

# getting_started/shaders_exercise2
add_executable(shaders_exercise2
${GLAD_SOURCE_DIR}/glad.c
${LEARN_OPENGL_DIR}/getting_started/shaders_exercise2/shaders_exercise2.cpp)
target_link_libraries(shaders_exercise2 glfw3)

# getting_started/textures_basic
add_executable(textures_basic
${GLAD_SOURCE_DIR}/glad.c
${LEARN_OPENGL_DIR}/getting_started/textures_basic/textures_basic.cpp)
target_link_libraries(textures_basic glfw3)

# getting_started/textures_combined
add_executable(textures_combined
${GLAD_SOURCE_DIR}/glad.c
${LEARN_OPENGL_DIR}/getting_started/textures_combined/textures_combined.cpp)
target_link_libraries(textures_combined glfw3)

# getting_started/textures_exercise2
add_executable(textures_exercise2
${GLAD_SOURCE_DIR}/glad.c
${LEARN_OPENGL_DIR}/getting_started/textures_exercise2/textures_exercise2.cpp)
target_link_libraries(textures_exercise2 glfw3)

# getting_started/textures_exercise3
add_executable(textures_exercise3
${GLAD_SOURCE_DIR}/glad.c
${LEARN_OPENGL_DIR}/getting_started/textures_exercise3/textures_exercise3.cpp)
target_link_libraries(textures_exercise3 glfw3)

# getting_started/textures_exercise4
add_executable(textures_exercise4
${GLAD_SOURCE_DIR}/glad.c
${LEARN_OPENGL_DIR}/getting_started/textures_exercise4/textures_exercise4.cpp)
target_link_libraries(textures_exercise4 glfw3)

# getting_started/transformations
add_executable(transformations
${GLAD_SOURCE_DIR}/glad.c
${LEARN_OPENGL_DIR}/getting_started/transformations/transformations.cpp)
target_link_libraries(transformations glfw3)

# getting_started/transformations_exercise1
add_executable(transformations_exercise1
${GLAD_SOURCE_DIR}/glad.c
${LEARN_OPENGL_DIR}/getting_started/transformations_exercise1/transformations_exercise1.cpp)
target_link_libraries(transformations_exercise1 glfw3)

# getting_started/transformations_exercise2
add_executable(transformations_exercise2
${GLAD_SOURCE_DIR}/glad.c
${LEARN_OPENGL_DIR}/getting_started/transformations_exercise2/transformations_exercise2.cpp)
target_link_libraries(transformations_exercise2 glfw3)