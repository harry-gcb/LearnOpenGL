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

add_subdirectory(cmake)

