add_pfunit_ctest (test_projectile_motion_mod
  TEST_SOURCES test_projectile_motion.pf
  LINK_LIBRARIES projectile
  )

add_pfunit_ctest (test_vector_products_mod
  TEST_SOURCES test_vector_products.pf
  LINK_LIBRARIES vector
  )

add_pfunit_ctest (test_lorentz_force_mod
  TEST_SOURCES test_lorentz_force.pf
  LINK_LIBRARIES lorentz
  )
