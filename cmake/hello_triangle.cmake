
add_executable(hello_triangle
${GLAD_SOURCE_DIR}/glad.c
${CMAKE_SOURCE_DIR}/test/hello_triangle.cpp)

if (APPLE) 
    target_link_libraries(hello_triangle ${AppLib})
endif()

target_link_libraries(hello_triangle glfw3)

