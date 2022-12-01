
add_executable(hello_triangle_indexed
${GLAD_SOURCE_DIR}/glad.c
${CMAKE_SOURCE_DIR}/test/hello_triangle_indexed.cpp)

if (APPLE) 
    target_link_libraries(hello_triangle_indexed ${AppLib})
endif()

target_link_libraries(hello_triangle_indexed glfw3)

