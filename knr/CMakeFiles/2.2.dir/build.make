# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.14

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
CMAKE_COMMAND = "/Users/folkol/Library/Application Support/JetBrains/Toolbox/apps/CLion/ch-0/191.7141.37/CLion.app/Contents/bin/cmake/mac/bin/cmake"

# The command to remove a file.
RM = "/Users/folkol/Library/Application Support/JetBrains/Toolbox/apps/CLion/ch-0/191.7141.37/CLion.app/Contents/bin/cmake/mac/bin/cmake" -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /Users/folkol/code/tutorials/knr

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /Users/folkol/code/tutorials/knr

# Include any dependencies generated for this target.
include CMakeFiles/2.2.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/2.2.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/2.2.dir/flags.make

CMakeFiles/2.2.dir/2_2.c.o: CMakeFiles/2.2.dir/flags.make
CMakeFiles/2.2.dir/2_2.c.o: 2_2.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/folkol/code/tutorials/knr/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object CMakeFiles/2.2.dir/2_2.c.o"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/2.2.dir/2_2.c.o   -c /Users/folkol/code/tutorials/knr/2_2.c

CMakeFiles/2.2.dir/2_2.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/2.2.dir/2_2.c.i"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /Users/folkol/code/tutorials/knr/2_2.c > CMakeFiles/2.2.dir/2_2.c.i

CMakeFiles/2.2.dir/2_2.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/2.2.dir/2_2.c.s"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /Users/folkol/code/tutorials/knr/2_2.c -o CMakeFiles/2.2.dir/2_2.c.s

# Object files for target 2.2
2_2_OBJECTS = \
"CMakeFiles/2.2.dir/2_2.c.o"

# External object files for target 2.2
2_2_EXTERNAL_OBJECTS =

2.2: CMakeFiles/2.2.dir/2_2.c.o
2.2: CMakeFiles/2.2.dir/build.make
2.2: CMakeFiles/2.2.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/Users/folkol/code/tutorials/knr/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking C executable 2.2"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/2.2.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/2.2.dir/build: 2.2

.PHONY : CMakeFiles/2.2.dir/build

CMakeFiles/2.2.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/2.2.dir/cmake_clean.cmake
.PHONY : CMakeFiles/2.2.dir/clean

CMakeFiles/2.2.dir/depend:
	cd /Users/folkol/code/tutorials/knr && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/folkol/code/tutorials/knr /Users/folkol/code/tutorials/knr /Users/folkol/code/tutorials/knr /Users/folkol/code/tutorials/knr /Users/folkol/code/tutorials/knr/CMakeFiles/2.2.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/2.2.dir/depend

