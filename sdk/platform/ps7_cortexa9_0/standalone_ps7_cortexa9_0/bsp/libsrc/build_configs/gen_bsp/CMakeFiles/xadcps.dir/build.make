# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.24

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

# Produce verbose output by default.
VERBOSE = 1

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
CMAKE_COMMAND = C:/Xilinx/Vitis/2023.2/tps/win64/cmake-3.24.2/bin/cmake.exe

# The command to remove a file.
RM = C:/Xilinx/Vitis/2023.2/tps/win64/cmake-3.24.2/bin/cmake.exe -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = C:/Projects/ERN24004/Experiments/13062024/Cora-Z7-07S-Pmod_Ad1/sdk/platform/ps7_cortexa9_0/standalone_ps7_cortexa9_0/bsp

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = C:/Projects/ERN24004/Experiments/13062024/Cora-Z7-07S-Pmod_Ad1/sdk/platform/ps7_cortexa9_0/standalone_ps7_cortexa9_0/bsp/libsrc/build_configs/gen_bsp

# Utility rule file for xadcps.

# Include any custom commands dependencies for this target.
include CMakeFiles/xadcps.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/xadcps.dir/progress.make

CMakeFiles/xadcps:
	lopper -O C:/Projects/ERN24004/Experiments/13062024/Cora-Z7-07S-Pmod_Ad1/sdk/platform/ps7_cortexa9_0/standalone_ps7_cortexa9_0/bsp/libsrc/xadcps/src C:/Projects/ERN24004/Experiments/13062024/Cora-Z7-07S-Pmod_Ad1/sdk/platform/ps7_cortexa9_0/standalone_ps7_cortexa9_0/bsp/hw_artifacts/ps7_cortexa9_0_baremetal.dts -- baremetalconfig_xlnx ps7_cortexa9_0 C:/Xilinx/Vitis/2023.2/data/embeddedsw/XilinxProcessorIPLib/drivers/xadcps_v2_7/src

xadcps: CMakeFiles/xadcps
xadcps: CMakeFiles/xadcps.dir/build.make
.PHONY : xadcps

# Rule to build all files generated by this target.
CMakeFiles/xadcps.dir/build: xadcps
.PHONY : CMakeFiles/xadcps.dir/build

CMakeFiles/xadcps.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/xadcps.dir/cmake_clean.cmake
.PHONY : CMakeFiles/xadcps.dir/clean

CMakeFiles/xadcps.dir/depend:
	$(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" C:/Projects/ERN24004/Experiments/13062024/Cora-Z7-07S-Pmod_Ad1/sdk/platform/ps7_cortexa9_0/standalone_ps7_cortexa9_0/bsp C:/Projects/ERN24004/Experiments/13062024/Cora-Z7-07S-Pmod_Ad1/sdk/platform/ps7_cortexa9_0/standalone_ps7_cortexa9_0/bsp C:/Projects/ERN24004/Experiments/13062024/Cora-Z7-07S-Pmod_Ad1/sdk/platform/ps7_cortexa9_0/standalone_ps7_cortexa9_0/bsp/libsrc/build_configs/gen_bsp C:/Projects/ERN24004/Experiments/13062024/Cora-Z7-07S-Pmod_Ad1/sdk/platform/ps7_cortexa9_0/standalone_ps7_cortexa9_0/bsp/libsrc/build_configs/gen_bsp C:/Projects/ERN24004/Experiments/13062024/Cora-Z7-07S-Pmod_Ad1/sdk/platform/ps7_cortexa9_0/standalone_ps7_cortexa9_0/bsp/libsrc/build_configs/gen_bsp/CMakeFiles/xadcps.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/xadcps.dir/depend
