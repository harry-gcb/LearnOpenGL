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