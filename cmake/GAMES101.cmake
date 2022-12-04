# include
include_directories($ENV{LIB_3RDPARTY_PATH}/eigen3/include) # eigen3
include_directories(${CMAKE_SOURCE_DIR}/include) # LearnOpenGL

# set root path
set(GAMES101_DIR ${CMAKE_SOURCE_DIR}/GAMES101)

# Transformation
add_executable(Transformation
${GAMES101_DIR}/Transformation/main.cpp)
target_link_libraries(Transformation)

