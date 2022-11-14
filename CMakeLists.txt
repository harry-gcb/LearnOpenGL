cmake_minimum_required(VERSION 3.8)

project(learnopengl C CXX)

set(CMAKE_CXX_STANDARD 20)
set(CMAKE_BUILD_TYPE Release)
if (APPLE)
    set(AppLib
        "-framework CoreFoundation"
        "-framework CoreGraphics"
        "-framework IOKit"
        "-framework AppKit")
endif()

include_directories(${CMAKE_SOURCE_DIR}/include)
# glfw
include_directories($ENV{LIB_3RDPARTY_PATH}/glfw/include)
link_directories($ENV{LIB_3RDPARTY_PATH}/glfw/lib)

# glad
include_directories($ENV{LIB_3RDPARTY_PATH}/glad/include)
set(GLAD_SOURCE_DIR $ENV{LIB_3RDPARTY_PATH}/glad/src)

# glew
include_directories($ENV{LIB_3RDPARTY_PATH}/glew/include)
link_directories($ENV{LIB_3RDPARTY_PATH}/glew/lib)

add_subdirectory(cmake)

