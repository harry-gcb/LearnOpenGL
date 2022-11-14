
add_executable(hellowindow
${GLAD_SOURCE_DIR}/glad.c
${CMAKE_SOURCE_DIR}/src/hellowindow.cpp)

if (APPLE) 
    target_link_libraries(hellowindow ${AppLib})
endif()
target_link_libraries(hellowindow glfw3)