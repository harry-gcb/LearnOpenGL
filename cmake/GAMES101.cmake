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

# Assignment1
aux_source_directory(${GAMES101_DIR}/Assignment1 Assignment1)
add_executable(Assignment1 ${Assignment1})
target_link_libraries(Assignment1 opencv_world460d)

# Assignment2
aux_source_directory(${GAMES101_DIR}/Assignment2 Assignment2)
add_executable(Assignment2 ${Assignment2})
target_link_libraries(Assignment2 opencv_world460d)

# Assignment3
aux_source_directory(${GAMES101_DIR}/Assignment3 Assignment3)
add_executable(Assignment3 ${Assignment3})
target_link_libraries(Assignment3 opencv_world460d)



