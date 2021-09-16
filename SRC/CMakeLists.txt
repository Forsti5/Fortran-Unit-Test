add_library(sut
  ProjectileMotion.f90
  )

add_executable(main
  main.f90
  )
  
target_link_libraries(main sut)

#set_target_properties (sut PROPERTIES
#  Fortran_MODULE_DIRECTORY ${CMAKE_CURRENT_BINARY_DIR})

#target_include_directories(sut PUBLIC ${CMAKE_CURRENT_BINARY_DIR})
