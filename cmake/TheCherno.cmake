
# source code
set(GLAD_SOURCE_DIR $ENV{LIB_3RDPARTY_PATH}/glad/src)
aux_source_directory(${GLAD_SOURCE_DIR} SOURCE_LIST)
aux_source_directory(${CMAKE_SOURCE_DIR}/TheCherno SOURCE_LIST)

# header
include_directories(${CMAKE_SOURCE_DIR}/include)
include_directories($ENV{LIB_3RDPARTY_PATH}/glad/include) # glad
include_directories($ENV{LIB_3RDPARTY_PATH}/glfw/include) # glfw

# lib
link_directories($ENV{LIB_3RDPARTY_PATH}/glfw/lib)

add_executable(TheChernoOpenGL ${SOURCE_LIST})

if (APPLE) 
    target_link_libraries(TheChernoOpenGL ${AppLib})
endif()

target_link_libraries(TheChernoOpenGL glfw3)

