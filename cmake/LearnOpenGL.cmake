set(LEARN_OPENGL_DIR ${CMAKE_SOURCE_DIR}/LearnOpenGL)

include_directories($ENV{LIB_3RDPARTY_PATH}/glad/include) # glad
include_directories($ENV{LIB_3RDPARTY_PATH}/glfw/include) # glfw
include_directories($ENV{LIB_3RDPARTY_PATH}/assimp/include) # glfw
include_directories($ENV{LIB_3RDPARTY_PATH}/stb) # stb_image
include_directories($ENV{LIB_3RDPARTY_PATH}/glm) # glm
include_directories(${LEARN_OPENGL_DIR}) # LearnOpenGL

# lib
link_directories($ENV{LIB_3RDPARTY_PATH}/glfw/lib)
link_directories($ENV{LIB_3RDPARTY_PATH}/assimp/lib)

# getting_started/hello_window
add_executable(hello_window
${GLAD_SOURCE_DIR}/glad.c
${LEARN_OPENGL_DIR}/getting_started/hello_window/hello_window.cpp)
target_link_libraries(hello_window ${GL_DEPS})

# getting_started/hello_window_clear
add_executable(hello_window_clear
${GLAD_SOURCE_DIR}/glad.c
${LEARN_OPENGL_DIR}/getting_started/hello_window_clear/hello_window_clear.cpp)
target_link_libraries(hello_window_clear ${GL_DEPS})

# getting_started/hello_triangle
add_executable(hello_triangle
${GLAD_SOURCE_DIR}/glad.c
${LEARN_OPENGL_DIR}/getting_started/hello_triangle/hello_triangle.cpp)
target_link_libraries(hello_triangle ${GL_DEPS})

# getting_started/hello_triangle_indexed
add_executable(hello_triangle_indexed
${GLAD_SOURCE_DIR}/glad.c
${LEARN_OPENGL_DIR}/getting_started/hello_triangle_indexed/hello_triangle_indexed.cpp)
target_link_libraries(hello_triangle_indexed ${GL_DEPS})

# getting_started/hello_triangle_exercise1
add_executable(hello_triangle_exercise1
${GLAD_SOURCE_DIR}/glad.c
${LEARN_OPENGL_DIR}/getting_started/hello_triangle_exercise1/hello_triangle_exercise1.cpp)
target_link_libraries(hello_triangle_exercise1 ${GL_DEPS})

# getting_started/hello_triangle_exercise2
add_executable(hello_triangle_exercise2
${GLAD_SOURCE_DIR}/glad.c
${LEARN_OPENGL_DIR}/getting_started/hello_triangle_exercise2/hello_triangle_exercise2.cpp)
target_link_libraries(hello_triangle_exercise2 ${GL_DEPS})

# getting_started/hello_triangle_exercise3
add_executable(hello_triangle_exercise3
${GLAD_SOURCE_DIR}/glad.c
${LEARN_OPENGL_DIR}/getting_started/hello_triangle_exercise3/hello_triangle_exercise3.cpp)
target_link_libraries(hello_triangle_exercise3 ${GL_DEPS})

# getting_started/shaders_basic
add_executable(shaders_basic
${GLAD_SOURCE_DIR}/glad.c
${LEARN_OPENGL_DIR}/getting_started/shaders_basic/shaders_basic.cpp)
target_link_libraries(shaders_basic ${GL_DEPS})

# getting_started/shaders_uniform
add_executable(shaders_uniform
${GLAD_SOURCE_DIR}/glad.c
${LEARN_OPENGL_DIR}/getting_started/shaders_uniform/shaders_uniform.cpp)
target_link_libraries(shaders_uniform ${GL_DEPS})

# getting_started/shaders_interpolation
add_executable(shaders_interpolation
${GLAD_SOURCE_DIR}/glad.c
${LEARN_OPENGL_DIR}/getting_started/shaders_interpolation/shaders_interpolation.cpp)
target_link_libraries(shaders_interpolation ${GL_DEPS})

# getting_started/shaders_class
add_executable(shaders_class
${GLAD_SOURCE_DIR}/glad.c
${LEARN_OPENGL_DIR}/getting_started/shaders_class/shaders_class.cpp)
target_link_libraries(shaders_class ${GL_DEPS})

# getting_started/shaders_exercise2
add_executable(shaders_exercise2
${GLAD_SOURCE_DIR}/glad.c
${LEARN_OPENGL_DIR}/getting_started/shaders_exercise2/shaders_exercise2.cpp)
target_link_libraries(shaders_exercise2 ${GL_DEPS})

# getting_started/textures_basic
add_executable(textures_basic
${GLAD_SOURCE_DIR}/glad.c
${LEARN_OPENGL_DIR}/getting_started/textures_basic/textures_basic.cpp)
target_link_libraries(textures_basic ${GL_DEPS})

# getting_started/textures_combined
add_executable(textures_combined
${GLAD_SOURCE_DIR}/glad.c
${LEARN_OPENGL_DIR}/getting_started/textures_combined/textures_combined.cpp)
target_link_libraries(textures_combined ${GL_DEPS})

# getting_started/textures_exercise2
add_executable(textures_exercise2
${GLAD_SOURCE_DIR}/glad.c
${LEARN_OPENGL_DIR}/getting_started/textures_exercise2/textures_exercise2.cpp)
target_link_libraries(textures_exercise2 ${GL_DEPS})

# getting_started/textures_exercise3
add_executable(textures_exercise3
${GLAD_SOURCE_DIR}/glad.c
${LEARN_OPENGL_DIR}/getting_started/textures_exercise3/textures_exercise3.cpp)
target_link_libraries(textures_exercise3 ${GL_DEPS})

# getting_started/textures_exercise4
add_executable(textures_exercise4
${GLAD_SOURCE_DIR}/glad.c
${LEARN_OPENGL_DIR}/getting_started/textures_exercise4/textures_exercise4.cpp)
target_link_libraries(textures_exercise4 ${GL_DEPS})

# getting_started/transformations
add_executable(transformations
${GLAD_SOURCE_DIR}/glad.c
${LEARN_OPENGL_DIR}/getting_started/transformations/transformations.cpp)
target_link_libraries(transformations ${GL_DEPS})

# getting_started/transformations_exercise1
add_executable(transformations_exercise1
${GLAD_SOURCE_DIR}/glad.c
${LEARN_OPENGL_DIR}/getting_started/transformations_exercise1/transformations_exercise1.cpp)
target_link_libraries(transformations_exercise1 ${GL_DEPS})

# getting_started/transformations_exercise2
add_executable(transformations_exercise2
${GLAD_SOURCE_DIR}/glad.c
${LEARN_OPENGL_DIR}/getting_started/transformations_exercise2/transformations_exercise2.cpp)
target_link_libraries(transformations_exercise2 ${GL_DEPS})

# getting_started/coordinate_systems
add_executable(coordinate_systems
${GLAD_SOURCE_DIR}/glad.c
${LEARN_OPENGL_DIR}/getting_started/coordinate_systems/coordinate_systems.cpp)
target_link_libraries(coordinate_systems ${GL_DEPS})

# getting_started/coordinate_systems_depth
add_executable(coordinate_systems_depth
${GLAD_SOURCE_DIR}/glad.c
${LEARN_OPENGL_DIR}/getting_started/coordinate_systems_depth/coordinate_systems_depth.cpp)
target_link_libraries(coordinate_systems_depth ${GL_DEPS})

# getting_started/coordinate_systems_multiple
add_executable(coordinate_systems_multiple
${GLAD_SOURCE_DIR}/glad.c
${LEARN_OPENGL_DIR}/getting_started/coordinate_systems_multiple/coordinate_systems_multiple.cpp)
target_link_libraries(coordinate_systems_multiple ${GL_DEPS})

# getting_started/coordinate_systems_exercise1
add_executable(coordinate_systems_exercise1
${GLAD_SOURCE_DIR}/glad.c
${LEARN_OPENGL_DIR}/getting_started/coordinate_systems_exercise1/coordinate_systems_exercise1.cpp)
target_link_libraries(coordinate_systems_exercise1 ${GL_DEPS})

# getting_started/coordinate_systems_exercise2
add_executable(coordinate_systems_exercise2
${GLAD_SOURCE_DIR}/glad.c
${LEARN_OPENGL_DIR}/getting_started/coordinate_systems_exercise2/coordinate_systems_exercise2.cpp)
target_link_libraries(coordinate_systems_exercise2 ${GL_DEPS})

# getting_started/coordinate_systems_exercise3
add_executable(coordinate_systems_exercise3
${GLAD_SOURCE_DIR}/glad.c
${LEARN_OPENGL_DIR}/getting_started/coordinate_systems_exercise3/coordinate_systems_exercise3.cpp)
target_link_libraries(coordinate_systems_exercise3 ${GL_DEPS})

# getting_started/camera
add_executable(camera
${GLAD_SOURCE_DIR}/glad.c
${LEARN_OPENGL_DIR}/getting_started/camera/camera.cpp)
target_link_libraries(camera ${GL_DEPS})

# getting_started/camera_keyboard
add_executable(camera_keyboard
${GLAD_SOURCE_DIR}/glad.c
${LEARN_OPENGL_DIR}/getting_started/camera_keyboard/camera_keyboard.cpp)
target_link_libraries(camera_keyboard ${GL_DEPS})

# getting_started/camera_keyboard_dt
add_executable(camera_keyboard_dt
${GLAD_SOURCE_DIR}/glad.c
${LEARN_OPENGL_DIR}/getting_started/camera_keyboard_dt/camera_keyboard_dt.cpp)
target_link_libraries(camera_keyboard_dt ${GL_DEPS})

# getting_started/camera_mouse
add_executable(camera_mouse
${GLAD_SOURCE_DIR}/glad.c
${LEARN_OPENGL_DIR}/getting_started/camera_mouse/camera_mouse.cpp)
target_link_libraries(camera_mouse ${GL_DEPS})

# getting_started/camera_zoom
add_executable(camera_zoom
${GLAD_SOURCE_DIR}/glad.c
${LEARN_OPENGL_DIR}/getting_started/camera_zoom/camera_zoom.cpp)
target_link_libraries(camera_zoom ${GL_DEPS})

# getting_started/camera_class
add_executable(camera_class
${GLAD_SOURCE_DIR}/glad.c
${LEARN_OPENGL_DIR}/getting_started/camera_class/camera_class.cpp)
target_link_libraries(camera_class ${GL_DEPS})

# getting_started/camera_exercise1
add_executable(camera_exercise1
${GLAD_SOURCE_DIR}/glad.c
${LEARN_OPENGL_DIR}/getting_started/camera_exercise1/camera_exercise1.cpp)
target_link_libraries(camera_exercise1 ${GL_DEPS})

# getting_started/camera_exercise2
add_executable(camera_exercise2
${GLAD_SOURCE_DIR}/glad.c
${LEARN_OPENGL_DIR}/getting_started/camera_exercise2/camera_exercise2.cpp)
target_link_libraries(camera_exercise2 ${GL_DEPS})

# lighting/lighting_colors
add_executable(lighting_colors
${GLAD_SOURCE_DIR}/glad.c
${LEARN_OPENGL_DIR}/lighting/lighting_colors/lighting_colors.cpp)
target_link_libraries(lighting_colors ${GL_DEPS})

# lighting/lighting_basic
add_executable(lighting_basic
${GLAD_SOURCE_DIR}/glad.c
${LEARN_OPENGL_DIR}/lighting/lighting_basic/lighting_basic.cpp)
target_link_libraries(lighting_basic ${GL_DEPS})

# lighting/lighting_basic_exercise1
add_executable(lighting_basic_exercise1
${GLAD_SOURCE_DIR}/glad.c
${LEARN_OPENGL_DIR}/lighting/lighting_basic_exercise1/lighting_basic_exercise1.cpp)
target_link_libraries(lighting_basic_exercise1 ${GL_DEPS})

# lighting/lighting_materials
add_executable(lighting_materials
${GLAD_SOURCE_DIR}/glad.c
${LEARN_OPENGL_DIR}/lighting/lighting_materials/lighting_materials.cpp)
target_link_libraries(lighting_materials ${GL_DEPS})

# lighting/lighting_materials_exercise2
add_executable(lighting_materials_exercise2
${GLAD_SOURCE_DIR}/glad.c
${LEARN_OPENGL_DIR}/lighting/lighting_materials_exercise2/lighting_materials_exercise2.cpp)
target_link_libraries(lighting_materials_exercise2 ${GL_DEPS})

# lighting/lighting_maps
add_executable(lighting_maps
${GLAD_SOURCE_DIR}/glad.c
${LEARN_OPENGL_DIR}/lighting/lighting_maps/lighting_maps.cpp)
target_link_libraries(lighting_maps ${GL_DEPS})

# lighting/lighting_maps_exercise3
add_executable(lighting_maps_exercise3
${GLAD_SOURCE_DIR}/glad.c
${LEARN_OPENGL_DIR}/lighting/lighting_maps_exercise3/lighting_maps_exercise3.cpp)
target_link_libraries(lighting_maps_exercise3 ${GL_DEPS})

# lighting/lighting_maps_exercise4
add_executable(lighting_maps_exercise4
${GLAD_SOURCE_DIR}/glad.c
${LEARN_OPENGL_DIR}/lighting/lighting_maps_exercise4/lighting_maps_exercise4.cpp)
target_link_libraries(lighting_maps_exercise4 ${GL_DEPS})

# lighting/lighting_casters_directional
add_executable(lighting_casters_directional
${GLAD_SOURCE_DIR}/glad.c
${LEARN_OPENGL_DIR}/lighting/lighting_casters_directional/lighting_casters_directional.cpp)
target_link_libraries(lighting_casters_directional ${GL_DEPS})

# lighting/lighting_casters_point
add_executable(lighting_casters_point
${GLAD_SOURCE_DIR}/glad.c
${LEARN_OPENGL_DIR}/lighting/lighting_casters_point/lighting_casters_point.cpp)
target_link_libraries(lighting_casters_point ${GL_DEPS})

# lighting/lighting_casters_spot
add_executable(lighting_casters_spot
${GLAD_SOURCE_DIR}/glad.c
${LEARN_OPENGL_DIR}/lighting/lighting_casters_spot/lighting_casters_spot.cpp)
target_link_libraries(lighting_casters_spot ${GL_DEPS})

# lighting/lighting_casters_spot_soft
add_executable(lighting_casters_spot_soft
${GLAD_SOURCE_DIR}/glad.c
${LEARN_OPENGL_DIR}/lighting/lighting_casters_spot_soft/lighting_casters_spot_soft.cpp)
target_link_libraries(lighting_casters_spot_soft ${GL_DEPS})

# lighting/lighting_mulitple
add_executable(lighting_multiple
${GLAD_SOURCE_DIR}/glad.c
${LEARN_OPENGL_DIR}/lighting/lighting_multiple/lighting_multiple.cpp)
target_link_libraries(lighting_multiple ${GL_DEPS})

# model_loading
add_executable(model_loading
${GLAD_SOURCE_DIR}/glad.c
${LEARN_OPENGL_DIR}/model_loading/model_loading.cpp)
target_link_libraries(model_loading ${GL_DEPS})

# advanced_opengl/depth_testing
add_executable(depth_testing
${GLAD_SOURCE_DIR}/glad.c
${LEARN_OPENGL_DIR}/advanced_opengl/depth_testing/depth_testing.cpp)
target_link_libraries(depth_testing ${GL_DEPS})

# advanced_opengl/depth_testing_view
add_executable(depth_testing_view
${GLAD_SOURCE_DIR}/glad.c
${LEARN_OPENGL_DIR}/advanced_opengl/depth_testing_view/depth_testing_view.cpp)
target_link_libraries(depth_testing_view ${GL_DEPS})

# advanced_opengl/stencil_testing
add_executable(stencil_testing
${GLAD_SOURCE_DIR}/glad.c
${LEARN_OPENGL_DIR}/advanced_opengl/stencil_testing/stencil_testing.cpp)
target_link_libraries(stencil_testing ${GL_DEPS})