cmake_minimum_required(VERSION 3.8)

project(learnopengl C CXX)

set(CMAKE_CXX_STANDARD 20)
set(CMAKE_BUILD_TYPE Debug)
set(GLAD_SOURCE_DIR $ENV{HOME}/Workspace/3rdparty/glad/src/)
if (APPLE)
    set(AppLib
        "-framework CoreFoundation"
        "-framework CoreGraphics"
        "-framework IOKit"
        "-framework AppKit")
endif()

include_directories(${CMAKE_SOURCE_DIR}/include)
include_directories($ENV{HOME}/Workspace/3rdparty/glad/include)
include_directories($ENV{HOME}/Workspace/3rdparty/glfw/include)

link_directories($ENV{HOME}/Workspace/3rdparty/glfw/lib)

add_subdirectory(cmake)

