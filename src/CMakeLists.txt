add_library(projectile
  projectile_motion.F90
  )
  
add_library(vector
  vector_products.F90
  )
  
add_library(lorentz
  lorentz_force.F90
  )

add_executable(main
  main.F90
  )
  
target_link_libraries(main projectile)
target_link_libraries(lorentz vector)

if(CMAKE_Fortran_COMPILER_ID MATCHES GNU)
	target_compile_options(projectile
		PRIVATE --coverage
		)

	target_compile_options(vector
		PRIVATE --coverage
		)

	target_compile_options(lorentz
		PRIVATE --coverage
		)
endif()


set_target_properties (projectile PROPERTIES
  Fortran_MODULE_DIRECTORY ${CMAKE_CURRENT_BINARY_DIR})

target_include_directories(projectile PUBLIC ${CMAKE_CURRENT_BINARY_DIR})


set_target_properties (vector PROPERTIES
  Fortran_MODULE_DIRECTORY ${CMAKE_CURRENT_BINARY_DIR})

target_include_directories(vector PUBLIC ${CMAKE_CURRENT_BINARY_DIR})


set_target_properties (lorentz PROPERTIES
  Fortran_MODULE_DIRECTORY ${CMAKE_CURRENT_BINARY_DIR})

target_include_directories(lorentz PUBLIC ${CMAKE_CURRENT_BINARY_DIR})

