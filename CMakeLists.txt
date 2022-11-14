cmake_minimum_required(VERSION 3.8)

project(learnopengl C CXX)

set(CMAKE_CXX_STANDARD 20)
set(CMAKE_BUILD_TYPE Debug)
if (APPLE)
    set(AppLib
        "-framework CoreFoundation"
        "-framework CoreGraphics"
        "-framework IOKit"
        "-framework AppKit")
endif()

include_directories(${CMAKE_SOURCE_DIR}/include)
include_directories($ENV{LIB_3RDPARTY_PATH}/glad/include)
include_directories($ENV{LIB_3RDPARTY_PATH}/glfw/include)
set(GLAD_SOURCE_DIR $ENV{LIB_3RDPARTY_PATH}/glad/src/)
link_directories($ENV{LIB_3RDPARTY_PATH}/glfw/lib)

add_subdirectory(cmake)

