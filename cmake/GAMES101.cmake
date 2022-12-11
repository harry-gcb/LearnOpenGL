# include
include_directories($ENV{LIB_3RDPARTY_PATH}/eigen3/include) # eigen3
include_directories($ENV{LIB_3RDPARTY_PATH}/opencv/include) # opencv
include_directories(${CMAKE_SOURCE_DIR}/include) # LearnOpenGL

# lib
link_directories($ENV{LIB_3RDPARTY_PATH}/opencv/lib)

# set root path
set(GAMES101_DIR ${CMAKE_SOURCE_DIR}/GAMES101)

# Transformation
aux_source_directory(${GAMES101_DIR}/Transformation Transformation)
add_executable(Transformation ${Transformation})
target_link_libraries(Transformation)

# Assignment
aux_source_directory(${GAMES101_DIR}/Assignment Assignment)
add_executable(Assignment ${Assignment})
target_link_libraries(Assignment opencv_world460d)


