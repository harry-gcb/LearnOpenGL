
add_executable(hello_window
${GLAD_SOURCE_DIR}/glad.c
${CMAKE_SOURCE_DIR}/src/hello_window.cpp)

if (APPLE) 
    target_link_libraries(hello_window ${AppLib})
endif()
target_link_libraries(hello_window glfw3)

