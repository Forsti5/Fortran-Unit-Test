# CMake generated Testfile for 
# Source directory: /home/daniel/Bachelorarbeit/Fortran-Unit-Test/tests
# Build directory: /home/daniel/Bachelorarbeit/Fortran-Unit-Test/build/tests
# 
# This file includes the relevant testing commands required for 
# testing this directory and lists subdirectories to be tested as well.
add_test(test_projectile_motion "/home/daniel/Bachelorarbeit/Fortran-Unit-Test/build/tests/test_projectile_motion")
set_tests_properties(test_projectile_motion PROPERTIES  FAIL_REGULAR_EXPRESSION "Encountered 1 or more failures/errors during testing" WORKING_DIRECTORY "/home/daniel/Bachelorarbeit/Fortran-Unit-Test/build/tests" _BACKTRACE_TRIPLES "/home/daniel/Bachelorarbeit/pFUnit/build/installed/PFUNIT-4.2/include/add_pfunit_ctest.cmake;142;add_test;/home/daniel/Bachelorarbeit/Fortran-Unit-Test/tests/CMakeLists.txt;1;add_pfunit_ctest;/home/daniel/Bachelorarbeit/Fortran-Unit-Test/tests/CMakeLists.txt;0;")
