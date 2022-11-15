add_executable(hello_window_glew
${CMAKE_SOURCE_DIR}/src/hello_window_glew.cpp)

if (APPLE) 
    target_link_libraries(hello_window_glew ${AppLib})
endif()

target_link_libraries(hello_window_glew glew32s glfw3 opengl32)