# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.20

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:

#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:

# Disable VCS-based implicit rules.
% : %,v

# Disable VCS-based implicit rules.
% : RCS/%

# Disable VCS-based implicit rules.
% : RCS/%,v

# Disable VCS-based implicit rules.
% : SCCS/s.%

# Disable VCS-based implicit rules.
% : s.%

.SUFFIXES: .hpux_make_needs_suffix_list

# Command-line flag to silence nested $(MAKE).
$(VERBOSE)MAKESILENT = -s

#Suppress display of executed commands.
$(VERBOSE).SILENT:

# A target that is always out of date.
cmake_force:
.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /usr/local/bin/cmake

# The command to remove a file.
RM = /usr/local/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/daniel/Bachelorarbeit/Fortran-Unit-Test

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/daniel/Bachelorarbeit/Fortran-Unit-Test/build

# Include any dependencies generated for this target.
include src/CMakeFiles/main.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include src/CMakeFiles/main.dir/compiler_depend.make

# Include the progress variables for this target.
include src/CMakeFiles/main.dir/progress.make

# Include the compile flags for this target's objects.
include src/CMakeFiles/main.dir/flags.make

src/CMakeFiles/main.dir/main.f90.o: src/CMakeFiles/main.dir/flags.make
src/CMakeFiles/main.dir/main.f90.o: ../src/main.f90
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/daniel/Bachelorarbeit/Fortran-Unit-Test/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building Fortran object src/CMakeFiles/main.dir/main.f90.o"
	cd /home/daniel/Bachelorarbeit/Fortran-Unit-Test/build/src && /usr/bin/f95 $(Fortran_DEFINES) $(Fortran_INCLUDES) $(Fortran_FLAGS) -c /home/daniel/Bachelorarbeit/Fortran-Unit-Test/src/main.f90 -o CMakeFiles/main.dir/main.f90.o

src/CMakeFiles/main.dir/main.f90.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing Fortran source to CMakeFiles/main.dir/main.f90.i"
	cd /home/daniel/Bachelorarbeit/Fortran-Unit-Test/build/src && /usr/bin/f95 $(Fortran_DEFINES) $(Fortran_INCLUDES) $(Fortran_FLAGS) -E /home/daniel/Bachelorarbeit/Fortran-Unit-Test/src/main.f90 > CMakeFiles/main.dir/main.f90.i

src/CMakeFiles/main.dir/main.f90.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling Fortran source to assembly CMakeFiles/main.dir/main.f90.s"
	cd /home/daniel/Bachelorarbeit/Fortran-Unit-Test/build/src && /usr/bin/f95 $(Fortran_DEFINES) $(Fortran_INCLUDES) $(Fortran_FLAGS) -S /home/daniel/Bachelorarbeit/Fortran-Unit-Test/src/main.f90 -o CMakeFiles/main.dir/main.f90.s

# Object files for target main
main_OBJECTS = \
"CMakeFiles/main.dir/main.f90.o"

# External object files for target main
main_EXTERNAL_OBJECTS =

src/main: src/CMakeFiles/main.dir/main.f90.o
src/main: src/CMakeFiles/main.dir/build.make
src/main: src/libsut.a
src/main: src/CMakeFiles/main.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/daniel/Bachelorarbeit/Fortran-Unit-Test/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking Fortran executable main"
	cd /home/daniel/Bachelorarbeit/Fortran-Unit-Test/build/src && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/main.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
src/CMakeFiles/main.dir/build: src/main
.PHONY : src/CMakeFiles/main.dir/build

src/CMakeFiles/main.dir/clean:
	cd /home/daniel/Bachelorarbeit/Fortran-Unit-Test/build/src && $(CMAKE_COMMAND) -P CMakeFiles/main.dir/cmake_clean.cmake
.PHONY : src/CMakeFiles/main.dir/clean

src/CMakeFiles/main.dir/depend:
	cd /home/daniel/Bachelorarbeit/Fortran-Unit-Test/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/daniel/Bachelorarbeit/Fortran-Unit-Test /home/daniel/Bachelorarbeit/Fortran-Unit-Test/src /home/daniel/Bachelorarbeit/Fortran-Unit-Test/build /home/daniel/Bachelorarbeit/Fortran-Unit-Test/build/src /home/daniel/Bachelorarbeit/Fortran-Unit-Test/build/src/CMakeFiles/main.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : src/CMakeFiles/main.dir/depend

