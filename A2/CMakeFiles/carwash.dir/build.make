# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.16

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:


# Remove some rules from gmake that .SUFFIXES does not remove.
SUFFIXES =

.SUFFIXES: .hpux_make_needs_suffix_list


# Suppress display of executed commands.
$(VERBOSE).SILENT:


# A target that is always out of date.
cmake_force:

.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/nemanja/Desktop/SLP/slpw22g203/A2

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/nemanja/Desktop/SLP/slpw22g203/A2

# Include any dependencies generated for this target.
include CMakeFiles/carwash.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/carwash.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/carwash.dir/flags.make

CMakeFiles/carwash.dir/vector.c.o: CMakeFiles/carwash.dir/flags.make
CMakeFiles/carwash.dir/vector.c.o: vector.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/nemanja/Desktop/SLP/slpw22g203/A2/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object CMakeFiles/carwash.dir/vector.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/carwash.dir/vector.c.o   -c /home/nemanja/Desktop/SLP/slpw22g203/A2/vector.c

CMakeFiles/carwash.dir/vector.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/carwash.dir/vector.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/nemanja/Desktop/SLP/slpw22g203/A2/vector.c > CMakeFiles/carwash.dir/vector.c.i

CMakeFiles/carwash.dir/vector.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/carwash.dir/vector.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/nemanja/Desktop/SLP/slpw22g203/A2/vector.c -o CMakeFiles/carwash.dir/vector.c.s

CMakeFiles/carwash.dir/carwash.c.o: CMakeFiles/carwash.dir/flags.make
CMakeFiles/carwash.dir/carwash.c.o: carwash.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/nemanja/Desktop/SLP/slpw22g203/A2/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building C object CMakeFiles/carwash.dir/carwash.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/carwash.dir/carwash.c.o   -c /home/nemanja/Desktop/SLP/slpw22g203/A2/carwash.c

CMakeFiles/carwash.dir/carwash.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/carwash.dir/carwash.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/nemanja/Desktop/SLP/slpw22g203/A2/carwash.c > CMakeFiles/carwash.dir/carwash.c.i

CMakeFiles/carwash.dir/carwash.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/carwash.dir/carwash.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/nemanja/Desktop/SLP/slpw22g203/A2/carwash.c -o CMakeFiles/carwash.dir/carwash.c.s

# Object files for target carwash
carwash_OBJECTS = \
"CMakeFiles/carwash.dir/vector.c.o" \
"CMakeFiles/carwash.dir/carwash.c.o"

# External object files for target carwash
carwash_EXTERNAL_OBJECTS =

carwash: CMakeFiles/carwash.dir/vector.c.o
carwash: CMakeFiles/carwash.dir/carwash.c.o
carwash: CMakeFiles/carwash.dir/build.make
carwash: CMakeFiles/carwash.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/nemanja/Desktop/SLP/slpw22g203/A2/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Linking C executable carwash"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/carwash.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/carwash.dir/build: carwash

.PHONY : CMakeFiles/carwash.dir/build

CMakeFiles/carwash.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/carwash.dir/cmake_clean.cmake
.PHONY : CMakeFiles/carwash.dir/clean

CMakeFiles/carwash.dir/depend:
	cd /home/nemanja/Desktop/SLP/slpw22g203/A2 && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/nemanja/Desktop/SLP/slpw22g203/A2 /home/nemanja/Desktop/SLP/slpw22g203/A2 /home/nemanja/Desktop/SLP/slpw22g203/A2 /home/nemanja/Desktop/SLP/slpw22g203/A2 /home/nemanja/Desktop/SLP/slpw22g203/A2/CMakeFiles/carwash.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/carwash.dir/depend

