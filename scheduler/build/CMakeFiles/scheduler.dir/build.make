# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.6

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
CMAKE_SOURCE_DIR = /home/pi/Desktop/Scheduler1/scheduler

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/pi/Desktop/Scheduler1/scheduler/build

# Include any dependencies generated for this target.
include CMakeFiles/scheduler.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/scheduler.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/scheduler.dir/flags.make

CMakeFiles/scheduler.dir/FifoMemory.cpp.o: CMakeFiles/scheduler.dir/flags.make
CMakeFiles/scheduler.dir/FifoMemory.cpp.o: ../FifoMemory.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/pi/Desktop/Scheduler1/scheduler/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/scheduler.dir/FifoMemory.cpp.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/scheduler.dir/FifoMemory.cpp.o -c /home/pi/Desktop/Scheduler1/scheduler/FifoMemory.cpp

CMakeFiles/scheduler.dir/FifoMemory.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/scheduler.dir/FifoMemory.cpp.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/pi/Desktop/Scheduler1/scheduler/FifoMemory.cpp > CMakeFiles/scheduler.dir/FifoMemory.cpp.i

CMakeFiles/scheduler.dir/FifoMemory.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/scheduler.dir/FifoMemory.cpp.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/pi/Desktop/Scheduler1/scheduler/FifoMemory.cpp -o CMakeFiles/scheduler.dir/FifoMemory.cpp.s

CMakeFiles/scheduler.dir/FifoMemory.cpp.o.requires:

.PHONY : CMakeFiles/scheduler.dir/FifoMemory.cpp.o.requires

CMakeFiles/scheduler.dir/FifoMemory.cpp.o.provides: CMakeFiles/scheduler.dir/FifoMemory.cpp.o.requires
	$(MAKE) -f CMakeFiles/scheduler.dir/build.make CMakeFiles/scheduler.dir/FifoMemory.cpp.o.provides.build
.PHONY : CMakeFiles/scheduler.dir/FifoMemory.cpp.o.provides

CMakeFiles/scheduler.dir/FifoMemory.cpp.o.provides.build: CMakeFiles/scheduler.dir/FifoMemory.cpp.o


CMakeFiles/scheduler.dir/FifoReadyQueue.cpp.o: CMakeFiles/scheduler.dir/flags.make
CMakeFiles/scheduler.dir/FifoReadyQueue.cpp.o: ../FifoReadyQueue.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/pi/Desktop/Scheduler1/scheduler/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/scheduler.dir/FifoReadyQueue.cpp.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/scheduler.dir/FifoReadyQueue.cpp.o -c /home/pi/Desktop/Scheduler1/scheduler/FifoReadyQueue.cpp

CMakeFiles/scheduler.dir/FifoReadyQueue.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/scheduler.dir/FifoReadyQueue.cpp.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/pi/Desktop/Scheduler1/scheduler/FifoReadyQueue.cpp > CMakeFiles/scheduler.dir/FifoReadyQueue.cpp.i

CMakeFiles/scheduler.dir/FifoReadyQueue.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/scheduler.dir/FifoReadyQueue.cpp.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/pi/Desktop/Scheduler1/scheduler/FifoReadyQueue.cpp -o CMakeFiles/scheduler.dir/FifoReadyQueue.cpp.s

CMakeFiles/scheduler.dir/FifoReadyQueue.cpp.o.requires:

.PHONY : CMakeFiles/scheduler.dir/FifoReadyQueue.cpp.o.requires

CMakeFiles/scheduler.dir/FifoReadyQueue.cpp.o.provides: CMakeFiles/scheduler.dir/FifoReadyQueue.cpp.o.requires
	$(MAKE) -f CMakeFiles/scheduler.dir/build.make CMakeFiles/scheduler.dir/FifoReadyQueue.cpp.o.provides.build
.PHONY : CMakeFiles/scheduler.dir/FifoReadyQueue.cpp.o.provides

CMakeFiles/scheduler.dir/FifoReadyQueue.cpp.o.provides.build: CMakeFiles/scheduler.dir/FifoReadyQueue.cpp.o


CMakeFiles/scheduler.dir/LeastRecentlyUsed.cpp.o: CMakeFiles/scheduler.dir/flags.make
CMakeFiles/scheduler.dir/LeastRecentlyUsed.cpp.o: ../LeastRecentlyUsed.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/pi/Desktop/Scheduler1/scheduler/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object CMakeFiles/scheduler.dir/LeastRecentlyUsed.cpp.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/scheduler.dir/LeastRecentlyUsed.cpp.o -c /home/pi/Desktop/Scheduler1/scheduler/LeastRecentlyUsed.cpp

CMakeFiles/scheduler.dir/LeastRecentlyUsed.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/scheduler.dir/LeastRecentlyUsed.cpp.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/pi/Desktop/Scheduler1/scheduler/LeastRecentlyUsed.cpp > CMakeFiles/scheduler.dir/LeastRecentlyUsed.cpp.i

CMakeFiles/scheduler.dir/LeastRecentlyUsed.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/scheduler.dir/LeastRecentlyUsed.cpp.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/pi/Desktop/Scheduler1/scheduler/LeastRecentlyUsed.cpp -o CMakeFiles/scheduler.dir/LeastRecentlyUsed.cpp.s

CMakeFiles/scheduler.dir/LeastRecentlyUsed.cpp.o.requires:

.PHONY : CMakeFiles/scheduler.dir/LeastRecentlyUsed.cpp.o.requires

CMakeFiles/scheduler.dir/LeastRecentlyUsed.cpp.o.provides: CMakeFiles/scheduler.dir/LeastRecentlyUsed.cpp.o.requires
	$(MAKE) -f CMakeFiles/scheduler.dir/build.make CMakeFiles/scheduler.dir/LeastRecentlyUsed.cpp.o.provides.build
.PHONY : CMakeFiles/scheduler.dir/LeastRecentlyUsed.cpp.o.provides

CMakeFiles/scheduler.dir/LeastRecentlyUsed.cpp.o.provides.build: CMakeFiles/scheduler.dir/LeastRecentlyUsed.cpp.o


CMakeFiles/scheduler.dir/MostRecentlyUsed.cpp.o: CMakeFiles/scheduler.dir/flags.make
CMakeFiles/scheduler.dir/MostRecentlyUsed.cpp.o: ../MostRecentlyUsed.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/pi/Desktop/Scheduler1/scheduler/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object CMakeFiles/scheduler.dir/MostRecentlyUsed.cpp.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/scheduler.dir/MostRecentlyUsed.cpp.o -c /home/pi/Desktop/Scheduler1/scheduler/MostRecentlyUsed.cpp

CMakeFiles/scheduler.dir/MostRecentlyUsed.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/scheduler.dir/MostRecentlyUsed.cpp.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/pi/Desktop/Scheduler1/scheduler/MostRecentlyUsed.cpp > CMakeFiles/scheduler.dir/MostRecentlyUsed.cpp.i

CMakeFiles/scheduler.dir/MostRecentlyUsed.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/scheduler.dir/MostRecentlyUsed.cpp.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/pi/Desktop/Scheduler1/scheduler/MostRecentlyUsed.cpp -o CMakeFiles/scheduler.dir/MostRecentlyUsed.cpp.s

CMakeFiles/scheduler.dir/MostRecentlyUsed.cpp.o.requires:

.PHONY : CMakeFiles/scheduler.dir/MostRecentlyUsed.cpp.o.requires

CMakeFiles/scheduler.dir/MostRecentlyUsed.cpp.o.provides: CMakeFiles/scheduler.dir/MostRecentlyUsed.cpp.o.requires
	$(MAKE) -f CMakeFiles/scheduler.dir/build.make CMakeFiles/scheduler.dir/MostRecentlyUsed.cpp.o.provides.build
.PHONY : CMakeFiles/scheduler.dir/MostRecentlyUsed.cpp.o.provides

CMakeFiles/scheduler.dir/MostRecentlyUsed.cpp.o.provides.build: CMakeFiles/scheduler.dir/MostRecentlyUsed.cpp.o


CMakeFiles/scheduler.dir/ShortestJobFirstReadyQueue.cpp.o: CMakeFiles/scheduler.dir/flags.make
CMakeFiles/scheduler.dir/ShortestJobFirstReadyQueue.cpp.o: ../ShortestJobFirstReadyQueue.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/pi/Desktop/Scheduler1/scheduler/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building CXX object CMakeFiles/scheduler.dir/ShortestJobFirstReadyQueue.cpp.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/scheduler.dir/ShortestJobFirstReadyQueue.cpp.o -c /home/pi/Desktop/Scheduler1/scheduler/ShortestJobFirstReadyQueue.cpp

CMakeFiles/scheduler.dir/ShortestJobFirstReadyQueue.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/scheduler.dir/ShortestJobFirstReadyQueue.cpp.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/pi/Desktop/Scheduler1/scheduler/ShortestJobFirstReadyQueue.cpp > CMakeFiles/scheduler.dir/ShortestJobFirstReadyQueue.cpp.i

CMakeFiles/scheduler.dir/ShortestJobFirstReadyQueue.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/scheduler.dir/ShortestJobFirstReadyQueue.cpp.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/pi/Desktop/Scheduler1/scheduler/ShortestJobFirstReadyQueue.cpp -o CMakeFiles/scheduler.dir/ShortestJobFirstReadyQueue.cpp.s

CMakeFiles/scheduler.dir/ShortestJobFirstReadyQueue.cpp.o.requires:

.PHONY : CMakeFiles/scheduler.dir/ShortestJobFirstReadyQueue.cpp.o.requires

CMakeFiles/scheduler.dir/ShortestJobFirstReadyQueue.cpp.o.provides: CMakeFiles/scheduler.dir/ShortestJobFirstReadyQueue.cpp.o.requires
	$(MAKE) -f CMakeFiles/scheduler.dir/build.make CMakeFiles/scheduler.dir/ShortestJobFirstReadyQueue.cpp.o.provides.build
.PHONY : CMakeFiles/scheduler.dir/ShortestJobFirstReadyQueue.cpp.o.provides

CMakeFiles/scheduler.dir/ShortestJobFirstReadyQueue.cpp.o.provides.build: CMakeFiles/scheduler.dir/ShortestJobFirstReadyQueue.cpp.o


CMakeFiles/scheduler.dir/ApproximateShortestJobFirstReadyQueue.cpp.o: CMakeFiles/scheduler.dir/flags.make
CMakeFiles/scheduler.dir/ApproximateShortestJobFirstReadyQueue.cpp.o: ../ApproximateShortestJobFirstReadyQueue.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/pi/Desktop/Scheduler1/scheduler/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Building CXX object CMakeFiles/scheduler.dir/ApproximateShortestJobFirstReadyQueue.cpp.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/scheduler.dir/ApproximateShortestJobFirstReadyQueue.cpp.o -c /home/pi/Desktop/Scheduler1/scheduler/ApproximateShortestJobFirstReadyQueue.cpp

CMakeFiles/scheduler.dir/ApproximateShortestJobFirstReadyQueue.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/scheduler.dir/ApproximateShortestJobFirstReadyQueue.cpp.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/pi/Desktop/Scheduler1/scheduler/ApproximateShortestJobFirstReadyQueue.cpp > CMakeFiles/scheduler.dir/ApproximateShortestJobFirstReadyQueue.cpp.i

CMakeFiles/scheduler.dir/ApproximateShortestJobFirstReadyQueue.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/scheduler.dir/ApproximateShortestJobFirstReadyQueue.cpp.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/pi/Desktop/Scheduler1/scheduler/ApproximateShortestJobFirstReadyQueue.cpp -o CMakeFiles/scheduler.dir/ApproximateShortestJobFirstReadyQueue.cpp.s

CMakeFiles/scheduler.dir/ApproximateShortestJobFirstReadyQueue.cpp.o.requires:

.PHONY : CMakeFiles/scheduler.dir/ApproximateShortestJobFirstReadyQueue.cpp.o.requires

CMakeFiles/scheduler.dir/ApproximateShortestJobFirstReadyQueue.cpp.o.provides: CMakeFiles/scheduler.dir/ApproximateShortestJobFirstReadyQueue.cpp.o.requires
	$(MAKE) -f CMakeFiles/scheduler.dir/build.make CMakeFiles/scheduler.dir/ApproximateShortestJobFirstReadyQueue.cpp.o.provides.build
.PHONY : CMakeFiles/scheduler.dir/ApproximateShortestJobFirstReadyQueue.cpp.o.provides

CMakeFiles/scheduler.dir/ApproximateShortestJobFirstReadyQueue.cpp.o.provides.build: CMakeFiles/scheduler.dir/ApproximateShortestJobFirstReadyQueue.cpp.o


CMakeFiles/scheduler.dir/SecondChance.cpp.o: CMakeFiles/scheduler.dir/flags.make
CMakeFiles/scheduler.dir/SecondChance.cpp.o: ../SecondChance.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/pi/Desktop/Scheduler1/scheduler/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_7) "Building CXX object CMakeFiles/scheduler.dir/SecondChance.cpp.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/scheduler.dir/SecondChance.cpp.o -c /home/pi/Desktop/Scheduler1/scheduler/SecondChance.cpp

CMakeFiles/scheduler.dir/SecondChance.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/scheduler.dir/SecondChance.cpp.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/pi/Desktop/Scheduler1/scheduler/SecondChance.cpp > CMakeFiles/scheduler.dir/SecondChance.cpp.i

CMakeFiles/scheduler.dir/SecondChance.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/scheduler.dir/SecondChance.cpp.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/pi/Desktop/Scheduler1/scheduler/SecondChance.cpp -o CMakeFiles/scheduler.dir/SecondChance.cpp.s

CMakeFiles/scheduler.dir/SecondChance.cpp.o.requires:

.PHONY : CMakeFiles/scheduler.dir/SecondChance.cpp.o.requires

CMakeFiles/scheduler.dir/SecondChance.cpp.o.provides: CMakeFiles/scheduler.dir/SecondChance.cpp.o.requires
	$(MAKE) -f CMakeFiles/scheduler.dir/build.make CMakeFiles/scheduler.dir/SecondChance.cpp.o.provides.build
.PHONY : CMakeFiles/scheduler.dir/SecondChance.cpp.o.provides

CMakeFiles/scheduler.dir/SecondChance.cpp.o.provides.build: CMakeFiles/scheduler.dir/SecondChance.cpp.o


CMakeFiles/scheduler.dir/Simulation.cpp.o: CMakeFiles/scheduler.dir/flags.make
CMakeFiles/scheduler.dir/Simulation.cpp.o: ../Simulation.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/pi/Desktop/Scheduler1/scheduler/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_8) "Building CXX object CMakeFiles/scheduler.dir/Simulation.cpp.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/scheduler.dir/Simulation.cpp.o -c /home/pi/Desktop/Scheduler1/scheduler/Simulation.cpp

CMakeFiles/scheduler.dir/Simulation.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/scheduler.dir/Simulation.cpp.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/pi/Desktop/Scheduler1/scheduler/Simulation.cpp > CMakeFiles/scheduler.dir/Simulation.cpp.i

CMakeFiles/scheduler.dir/Simulation.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/scheduler.dir/Simulation.cpp.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/pi/Desktop/Scheduler1/scheduler/Simulation.cpp -o CMakeFiles/scheduler.dir/Simulation.cpp.s

CMakeFiles/scheduler.dir/Simulation.cpp.o.requires:

.PHONY : CMakeFiles/scheduler.dir/Simulation.cpp.o.requires

CMakeFiles/scheduler.dir/Simulation.cpp.o.provides: CMakeFiles/scheduler.dir/Simulation.cpp.o.requires
	$(MAKE) -f CMakeFiles/scheduler.dir/build.make CMakeFiles/scheduler.dir/Simulation.cpp.o.provides.build
.PHONY : CMakeFiles/scheduler.dir/Simulation.cpp.o.provides

CMakeFiles/scheduler.dir/Simulation.cpp.o.provides.build: CMakeFiles/scheduler.dir/Simulation.cpp.o


CMakeFiles/scheduler.dir/Task.cpp.o: CMakeFiles/scheduler.dir/flags.make
CMakeFiles/scheduler.dir/Task.cpp.o: ../Task.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/pi/Desktop/Scheduler1/scheduler/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_9) "Building CXX object CMakeFiles/scheduler.dir/Task.cpp.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/scheduler.dir/Task.cpp.o -c /home/pi/Desktop/Scheduler1/scheduler/Task.cpp

CMakeFiles/scheduler.dir/Task.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/scheduler.dir/Task.cpp.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/pi/Desktop/Scheduler1/scheduler/Task.cpp > CMakeFiles/scheduler.dir/Task.cpp.i

CMakeFiles/scheduler.dir/Task.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/scheduler.dir/Task.cpp.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/pi/Desktop/Scheduler1/scheduler/Task.cpp -o CMakeFiles/scheduler.dir/Task.cpp.s

CMakeFiles/scheduler.dir/Task.cpp.o.requires:

.PHONY : CMakeFiles/scheduler.dir/Task.cpp.o.requires

CMakeFiles/scheduler.dir/Task.cpp.o.provides: CMakeFiles/scheduler.dir/Task.cpp.o.requires
	$(MAKE) -f CMakeFiles/scheduler.dir/build.make CMakeFiles/scheduler.dir/Task.cpp.o.provides.build
.PHONY : CMakeFiles/scheduler.dir/Task.cpp.o.provides

CMakeFiles/scheduler.dir/Task.cpp.o.provides.build: CMakeFiles/scheduler.dir/Task.cpp.o


CMakeFiles/scheduler.dir/scheduler_main.cpp.o: CMakeFiles/scheduler.dir/flags.make
CMakeFiles/scheduler.dir/scheduler_main.cpp.o: ../scheduler_main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/pi/Desktop/Scheduler1/scheduler/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_10) "Building CXX object CMakeFiles/scheduler.dir/scheduler_main.cpp.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/scheduler.dir/scheduler_main.cpp.o -c /home/pi/Desktop/Scheduler1/scheduler/scheduler_main.cpp

CMakeFiles/scheduler.dir/scheduler_main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/scheduler.dir/scheduler_main.cpp.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/pi/Desktop/Scheduler1/scheduler/scheduler_main.cpp > CMakeFiles/scheduler.dir/scheduler_main.cpp.i

CMakeFiles/scheduler.dir/scheduler_main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/scheduler.dir/scheduler_main.cpp.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/pi/Desktop/Scheduler1/scheduler/scheduler_main.cpp -o CMakeFiles/scheduler.dir/scheduler_main.cpp.s

CMakeFiles/scheduler.dir/scheduler_main.cpp.o.requires:

.PHONY : CMakeFiles/scheduler.dir/scheduler_main.cpp.o.requires

CMakeFiles/scheduler.dir/scheduler_main.cpp.o.provides: CMakeFiles/scheduler.dir/scheduler_main.cpp.o.requires
	$(MAKE) -f CMakeFiles/scheduler.dir/build.make CMakeFiles/scheduler.dir/scheduler_main.cpp.o.provides.build
.PHONY : CMakeFiles/scheduler.dir/scheduler_main.cpp.o.provides

CMakeFiles/scheduler.dir/scheduler_main.cpp.o.provides.build: CMakeFiles/scheduler.dir/scheduler_main.cpp.o


# Object files for target scheduler
scheduler_OBJECTS = \
"CMakeFiles/scheduler.dir/FifoMemory.cpp.o" \
"CMakeFiles/scheduler.dir/FifoReadyQueue.cpp.o" \
"CMakeFiles/scheduler.dir/LeastRecentlyUsed.cpp.o" \
"CMakeFiles/scheduler.dir/MostRecentlyUsed.cpp.o" \
"CMakeFiles/scheduler.dir/ShortestJobFirstReadyQueue.cpp.o" \
"CMakeFiles/scheduler.dir/ApproximateShortestJobFirstReadyQueue.cpp.o" \
"CMakeFiles/scheduler.dir/SecondChance.cpp.o" \
"CMakeFiles/scheduler.dir/Simulation.cpp.o" \
"CMakeFiles/scheduler.dir/Task.cpp.o" \
"CMakeFiles/scheduler.dir/scheduler_main.cpp.o"

# External object files for target scheduler
scheduler_EXTERNAL_OBJECTS =

scheduler: CMakeFiles/scheduler.dir/FifoMemory.cpp.o
scheduler: CMakeFiles/scheduler.dir/FifoReadyQueue.cpp.o
scheduler: CMakeFiles/scheduler.dir/LeastRecentlyUsed.cpp.o
scheduler: CMakeFiles/scheduler.dir/MostRecentlyUsed.cpp.o
scheduler: CMakeFiles/scheduler.dir/ShortestJobFirstReadyQueue.cpp.o
scheduler: CMakeFiles/scheduler.dir/ApproximateShortestJobFirstReadyQueue.cpp.o
scheduler: CMakeFiles/scheduler.dir/SecondChance.cpp.o
scheduler: CMakeFiles/scheduler.dir/Simulation.cpp.o
scheduler: CMakeFiles/scheduler.dir/Task.cpp.o
scheduler: CMakeFiles/scheduler.dir/scheduler_main.cpp.o
scheduler: CMakeFiles/scheduler.dir/build.make
scheduler: CMakeFiles/scheduler.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/pi/Desktop/Scheduler1/scheduler/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_11) "Linking CXX executable scheduler"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/scheduler.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/scheduler.dir/build: scheduler

.PHONY : CMakeFiles/scheduler.dir/build

CMakeFiles/scheduler.dir/requires: CMakeFiles/scheduler.dir/FifoMemory.cpp.o.requires
CMakeFiles/scheduler.dir/requires: CMakeFiles/scheduler.dir/FifoReadyQueue.cpp.o.requires
CMakeFiles/scheduler.dir/requires: CMakeFiles/scheduler.dir/LeastRecentlyUsed.cpp.o.requires
CMakeFiles/scheduler.dir/requires: CMakeFiles/scheduler.dir/MostRecentlyUsed.cpp.o.requires
CMakeFiles/scheduler.dir/requires: CMakeFiles/scheduler.dir/ShortestJobFirstReadyQueue.cpp.o.requires
CMakeFiles/scheduler.dir/requires: CMakeFiles/scheduler.dir/ApproximateShortestJobFirstReadyQueue.cpp.o.requires
CMakeFiles/scheduler.dir/requires: CMakeFiles/scheduler.dir/SecondChance.cpp.o.requires
CMakeFiles/scheduler.dir/requires: CMakeFiles/scheduler.dir/Simulation.cpp.o.requires
CMakeFiles/scheduler.dir/requires: CMakeFiles/scheduler.dir/Task.cpp.o.requires
CMakeFiles/scheduler.dir/requires: CMakeFiles/scheduler.dir/scheduler_main.cpp.o.requires

.PHONY : CMakeFiles/scheduler.dir/requires

CMakeFiles/scheduler.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/scheduler.dir/cmake_clean.cmake
.PHONY : CMakeFiles/scheduler.dir/clean

CMakeFiles/scheduler.dir/depend:
	cd /home/pi/Desktop/Scheduler1/scheduler/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/pi/Desktop/Scheduler1/scheduler /home/pi/Desktop/Scheduler1/scheduler /home/pi/Desktop/Scheduler1/scheduler/build /home/pi/Desktop/Scheduler1/scheduler/build /home/pi/Desktop/Scheduler1/scheduler/build/CMakeFiles/scheduler.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/scheduler.dir/depend

