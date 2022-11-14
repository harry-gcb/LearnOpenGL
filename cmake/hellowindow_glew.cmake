add_executable(hellowindow_glew
${CMAKE_SOURCE_DIR}/src/hellowindow_glew.cpp)

if (APPLE) 
    target_link_libraries(hellowindow_glew ${AppLib})
endif()

target_link_libraries(hellowindow_glew glew32s glfw3 opengl32)