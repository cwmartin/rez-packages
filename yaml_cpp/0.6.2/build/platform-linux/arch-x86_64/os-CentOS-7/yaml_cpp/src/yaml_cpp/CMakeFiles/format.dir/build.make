# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.10

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
CMAKE_COMMAND = /home/cmartin/packages/cmake/3.10.0/platform-linux/arch-x86_64/os-CentOS-7/bin/cmake

# The command to remove a file.
RM = /home/cmartin/packages/cmake/3.10.0/platform-linux/arch-x86_64/os-CentOS-7/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/cmartin/dev/third_party/rez-packages/yaml_cpp/0.6.2/build/platform-linux/arch-x86_64/os-CentOS-7/yaml_cpp/src/yaml_cpp

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/cmartin/dev/third_party/rez-packages/yaml_cpp/0.6.2/build/platform-linux/arch-x86_64/os-CentOS-7/yaml_cpp/src/yaml_cpp

# Utility rule file for format.

# Include the progress variables for this target.
include CMakeFiles/format.dir/progress.make

CMakeFiles/format:
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/cmartin/dev/third_party/rez-packages/yaml_cpp/0.6.2/build/platform-linux/arch-x86_64/os-CentOS-7/yaml_cpp/src/yaml_cpp/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Running clang-format"
	clang-format --style=file -i /home/cmartin/dev/third_party/rez-packages/yaml_cpp/0.6.2/build/platform-linux/arch-x86_64/os-CentOS-7/yaml_cpp/src/yaml_cpp/src/binary.cpp /home/cmartin/dev/third_party/rez-packages/yaml_cpp/0.6.2/build/platform-linux/arch-x86_64/os-CentOS-7/yaml_cpp/src/yaml_cpp/src/convert.cpp /home/cmartin/dev/third_party/rez-packages/yaml_cpp/0.6.2/build/platform-linux/arch-x86_64/os-CentOS-7/yaml_cpp/src/yaml_cpp/src/directives.cpp /home/cmartin/dev/third_party/rez-packages/yaml_cpp/0.6.2/build/platform-linux/arch-x86_64/os-CentOS-7/yaml_cpp/src/yaml_cpp/src/emit.cpp /home/cmartin/dev/third_party/rez-packages/yaml_cpp/0.6.2/build/platform-linux/arch-x86_64/os-CentOS-7/yaml_cpp/src/yaml_cpp/src/emitfromevents.cpp /home/cmartin/dev/third_party/rez-packages/yaml_cpp/0.6.2/build/platform-linux/arch-x86_64/os-CentOS-7/yaml_cpp/src/yaml_cpp/src/emitter.cpp /home/cmartin/dev/third_party/rez-packages/yaml_cpp/0.6.2/build/platform-linux/arch-x86_64/os-CentOS-7/yaml_cpp/src/yaml_cpp/src/emitterstate.cpp /home/cmartin/dev/third_party/rez-packages/yaml_cpp/0.6.2/build/platform-linux/arch-x86_64/os-CentOS-7/yaml_cpp/src/yaml_cpp/src/emitterutils.cpp /home/cmartin/dev/third_party/rez-packages/yaml_cpp/0.6.2/build/platform-linux/arch-x86_64/os-CentOS-7/yaml_cpp/src/yaml_cpp/src/exceptions.cpp /home/cmartin/dev/third_party/rez-packages/yaml_cpp/0.6.2/build/platform-linux/arch-x86_64/os-CentOS-7/yaml_cpp/src/yaml_cpp/src/exp.cpp /home/cmartin/dev/third_party/rez-packages/yaml_cpp/0.6.2/build/platform-linux/arch-x86_64/os-CentOS-7/yaml_cpp/src/yaml_cpp/src/memory.cpp /home/cmartin/dev/third_party/rez-packages/yaml_cpp/0.6.2/build/platform-linux/arch-x86_64/os-CentOS-7/yaml_cpp/src/yaml_cpp/src/node.cpp /home/cmartin/dev/third_party/rez-packages/yaml_cpp/0.6.2/build/platform-linux/arch-x86_64/os-CentOS-7/yaml_cpp/src/yaml_cpp/src/node_data.cpp /home/cmartin/dev/third_party/rez-packages/yaml_cpp/0.6.2/build/platform-linux/arch-x86_64/os-CentOS-7/yaml_cpp/src/yaml_cpp/src/nodebuilder.cpp /home/cmartin/dev/third_party/rez-packages/yaml_cpp/0.6.2/build/platform-linux/arch-x86_64/os-CentOS-7/yaml_cpp/src/yaml_cpp/src/nodeevents.cpp /home/cmartin/dev/third_party/rez-packages/yaml_cpp/0.6.2/build/platform-linux/arch-x86_64/os-CentOS-7/yaml_cpp/src/yaml_cpp/src/null.cpp /home/cmartin/dev/third_party/rez-packages/yaml_cpp/0.6.2/build/platform-linux/arch-x86_64/os-CentOS-7/yaml_cpp/src/yaml_cpp/src/ostream_wrapper.cpp /home/cmartin/dev/third_party/rez-packages/yaml_cpp/0.6.2/build/platform-linux/arch-x86_64/os-CentOS-7/yaml_cpp/src/yaml_cpp/src/parse.cpp /home/cmartin/dev/third_party/rez-packages/yaml_cpp/0.6.2/build/platform-linux/arch-x86_64/os-CentOS-7/yaml_cpp/src/yaml_cpp/src/parser.cpp /home/cmartin/dev/third_party/rez-packages/yaml_cpp/0.6.2/build/platform-linux/arch-x86_64/os-CentOS-7/yaml_cpp/src/yaml_cpp/src/regex_yaml.cpp /home/cmartin/dev/third_party/rez-packages/yaml_cpp/0.6.2/build/platform-linux/arch-x86_64/os-CentOS-7/yaml_cpp/src/yaml_cpp/src/scanner.cpp /home/cmartin/dev/third_party/rez-packages/yaml_cpp/0.6.2/build/platform-linux/arch-x86_64/os-CentOS-7/yaml_cpp/src/yaml_cpp/src/scanscalar.cpp /home/cmartin/dev/third_party/rez-packages/yaml_cpp/0.6.2/build/platform-linux/arch-x86_64/os-CentOS-7/yaml_cpp/src/yaml_cpp/src/scantag.cpp /home/cmartin/dev/third_party/rez-packages/yaml_cpp/0.6.2/build/platform-linux/arch-x86_64/os-CentOS-7/yaml_cpp/src/yaml_cpp/src/scantoken.cpp /home/cmartin/dev/third_party/rez-packages/yaml_cpp/0.6.2/build/platform-linux/arch-x86_64/os-CentOS-7/yaml_cpp/src/yaml_cpp/src/simplekey.cpp /home/cmartin/dev/third_party/rez-packages/yaml_cpp/0.6.2/build/platform-linux/arch-x86_64/os-CentOS-7/yaml_cpp/src/yaml_cpp/src/singledocparser.cpp /home/cmartin/dev/third_party/rez-packages/yaml_cpp/0.6.2/build/platform-linux/arch-x86_64/os-CentOS-7/yaml_cpp/src/yaml_cpp/src/stream.cpp /home/cmartin/dev/third_party/rez-packages/yaml_cpp/0.6.2/build/platform-linux/arch-x86_64/os-CentOS-7/yaml_cpp/src/yaml_cpp/src/tag.cpp /home/cmartin/dev/third_party/rez-packages/yaml_cpp/0.6.2/build/platform-linux/arch-x86_64/os-CentOS-7/yaml_cpp/src/yaml_cpp/include/yaml-cpp/anchor.h /home/cmartin/dev/third_party/rez-packages/yaml_cpp/0.6.2/build/platform-linux/arch-x86_64/os-CentOS-7/yaml_cpp/src/yaml_cpp/include/yaml-cpp/binary.h /home/cmartin/dev/third_party/rez-packages/yaml_cpp/0.6.2/build/platform-linux/arch-x86_64/os-CentOS-7/yaml_cpp/src/yaml_cpp/include/yaml-cpp/contrib/anchordict.h /home/cmartin/dev/third_party/rez-packages/yaml_cpp/0.6.2/build/platform-linux/arch-x86_64/os-CentOS-7/yaml_cpp/src/yaml_cpp/include/yaml-cpp/contrib/graphbuilder.h /home/cmartin/dev/third_party/rez-packages/yaml_cpp/0.6.2/build/platform-linux/arch-x86_64/os-CentOS-7/yaml_cpp/src/yaml_cpp/include/yaml-cpp/dll.h /home/cmartin/dev/third_party/rez-packages/yaml_cpp/0.6.2/build/platform-linux/arch-x86_64/os-CentOS-7/yaml_cpp/src/yaml_cpp/include/yaml-cpp/emitfromevents.h /home/cmartin/dev/third_party/rez-packages/yaml_cpp/0.6.2/build/platform-linux/arch-x86_64/os-CentOS-7/yaml_cpp/src/yaml_cpp/include/yaml-cpp/emitter.h /home/cmartin/dev/third_party/rez-packages/yaml_cpp/0.6.2/build/platform-linux/arch-x86_64/os-CentOS-7/yaml_cpp/src/yaml_cpp/include/yaml-cpp/emitterdef.h /home/cmartin/dev/third_party/rez-packages/yaml_cpp/0.6.2/build/platform-linux/arch-x86_64/os-CentOS-7/yaml_cpp/src/yaml_cpp/include/yaml-cpp/emittermanip.h /home/cmartin/dev/third_party/rez-packages/yaml_cpp/0.6.2/build/platform-linux/arch-x86_64/os-CentOS-7/yaml_cpp/src/yaml_cpp/include/yaml-cpp/emitterstyle.h /home/cmartin/dev/third_party/rez-packages/yaml_cpp/0.6.2/build/platform-linux/arch-x86_64/os-CentOS-7/yaml_cpp/src/yaml_cpp/include/yaml-cpp/eventhandler.h /home/cmartin/dev/third_party/rez-packages/yaml_cpp/0.6.2/build/platform-linux/arch-x86_64/os-CentOS-7/yaml_cpp/src/yaml_cpp/include/yaml-cpp/exceptions.h /home/cmartin/dev/third_party/rez-packages/yaml_cpp/0.6.2/build/platform-linux/arch-x86_64/os-CentOS-7/yaml_cpp/src/yaml_cpp/include/yaml-cpp/mark.h /home/cmartin/dev/third_party/rez-packages/yaml_cpp/0.6.2/build/platform-linux/arch-x86_64/os-CentOS-7/yaml_cpp/src/yaml_cpp/include/yaml-cpp/node/convert.h /home/cmartin/dev/third_party/rez-packages/yaml_cpp/0.6.2/build/platform-linux/arch-x86_64/os-CentOS-7/yaml_cpp/src/yaml_cpp/include/yaml-cpp/node/detail/bool_type.h /home/cmartin/dev/third_party/rez-packages/yaml_cpp/0.6.2/build/platform-linux/arch-x86_64/os-CentOS-7/yaml_cpp/src/yaml_cpp/include/yaml-cpp/node/detail/impl.h /home/cmartin/dev/third_party/rez-packages/yaml_cpp/0.6.2/build/platform-linux/arch-x86_64/os-CentOS-7/yaml_cpp/src/yaml_cpp/include/yaml-cpp/node/detail/iterator.h /home/cmartin/dev/third_party/rez-packages/yaml_cpp/0.6.2/build/platform-linux/arch-x86_64/os-CentOS-7/yaml_cpp/src/yaml_cpp/include/yaml-cpp/node/detail/iterator_fwd.h /home/cmartin/dev/third_party/rez-packages/yaml_cpp/0.6.2/build/platform-linux/arch-x86_64/os-CentOS-7/yaml_cpp/src/yaml_cpp/include/yaml-cpp/node/detail/memory.h /home/cmartin/dev/third_party/rez-packages/yaml_cpp/0.6.2/build/platform-linux/arch-x86_64/os-CentOS-7/yaml_cpp/src/yaml_cpp/include/yaml-cpp/node/detail/node.h /home/cmartin/dev/third_party/rez-packages/yaml_cpp/0.6.2/build/platform-linux/arch-x86_64/os-CentOS-7/yaml_cpp/src/yaml_cpp/include/yaml-cpp/node/detail/node_data.h /home/cmartin/dev/third_party/rez-packages/yaml_cpp/0.6.2/build/platform-linux/arch-x86_64/os-CentOS-7/yaml_cpp/src/yaml_cpp/include/yaml-cpp/node/detail/node_iterator.h /home/cmartin/dev/third_party/rez-packages/yaml_cpp/0.6.2/build/platform-linux/arch-x86_64/os-CentOS-7/yaml_cpp/src/yaml_cpp/include/yaml-cpp/node/detail/node_ref.h /home/cmartin/dev/third_party/rez-packages/yaml_cpp/0.6.2/build/platform-linux/arch-x86_64/os-CentOS-7/yaml_cpp/src/yaml_cpp/include/yaml-cpp/node/emit.h /home/cmartin/dev/third_party/rez-packages/yaml_cpp/0.6.2/build/platform-linux/arch-x86_64/os-CentOS-7/yaml_cpp/src/yaml_cpp/include/yaml-cpp/node/impl.h /home/cmartin/dev/third_party/rez-packages/yaml_cpp/0.6.2/build/platform-linux/arch-x86_64/os-CentOS-7/yaml_cpp/src/yaml_cpp/include/yaml-cpp/node/iterator.h /home/cmartin/dev/third_party/rez-packages/yaml_cpp/0.6.2/build/platform-linux/arch-x86_64/os-CentOS-7/yaml_cpp/src/yaml_cpp/include/yaml-cpp/node/node.h /home/cmartin/dev/third_party/rez-packages/yaml_cpp/0.6.2/build/platform-linux/arch-x86_64/os-CentOS-7/yaml_cpp/src/yaml_cpp/include/yaml-cpp/node/parse.h /home/cmartin/dev/third_party/rez-packages/yaml_cpp/0.6.2/build/platform-linux/arch-x86_64/os-CentOS-7/yaml_cpp/src/yaml_cpp/include/yaml-cpp/node/ptr.h /home/cmartin/dev/third_party/rez-packages/yaml_cpp/0.6.2/build/platform-linux/arch-x86_64/os-CentOS-7/yaml_cpp/src/yaml_cpp/include/yaml-cpp/node/type.h /home/cmartin/dev/third_party/rez-packages/yaml_cpp/0.6.2/build/platform-linux/arch-x86_64/os-CentOS-7/yaml_cpp/src/yaml_cpp/include/yaml-cpp/noncopyable.h /home/cmartin/dev/third_party/rez-packages/yaml_cpp/0.6.2/build/platform-linux/arch-x86_64/os-CentOS-7/yaml_cpp/src/yaml_cpp/include/yaml-cpp/null.h /home/cmartin/dev/third_party/rez-packages/yaml_cpp/0.6.2/build/platform-linux/arch-x86_64/os-CentOS-7/yaml_cpp/src/yaml_cpp/include/yaml-cpp/ostream_wrapper.h /home/cmartin/dev/third_party/rez-packages/yaml_cpp/0.6.2/build/platform-linux/arch-x86_64/os-CentOS-7/yaml_cpp/src/yaml_cpp/include/yaml-cpp/parser.h /home/cmartin/dev/third_party/rez-packages/yaml_cpp/0.6.2/build/platform-linux/arch-x86_64/os-CentOS-7/yaml_cpp/src/yaml_cpp/include/yaml-cpp/stlemitter.h /home/cmartin/dev/third_party/rez-packages/yaml_cpp/0.6.2/build/platform-linux/arch-x86_64/os-CentOS-7/yaml_cpp/src/yaml_cpp/include/yaml-cpp/traits.h /home/cmartin/dev/third_party/rez-packages/yaml_cpp/0.6.2/build/platform-linux/arch-x86_64/os-CentOS-7/yaml_cpp/src/yaml_cpp/include/yaml-cpp/yaml.h /home/cmartin/dev/third_party/rez-packages/yaml_cpp/0.6.2/build/platform-linux/arch-x86_64/os-CentOS-7/yaml_cpp/src/yaml_cpp/src/collectionstack.h /home/cmartin/dev/third_party/rez-packages/yaml_cpp/0.6.2/build/platform-linux/arch-x86_64/os-CentOS-7/yaml_cpp/src/yaml_cpp/src/directives.h /home/cmartin/dev/third_party/rez-packages/yaml_cpp/0.6.2/build/platform-linux/arch-x86_64/os-CentOS-7/yaml_cpp/src/yaml_cpp/src/emitterstate.h /home/cmartin/dev/third_party/rez-packages/yaml_cpp/0.6.2/build/platform-linux/arch-x86_64/os-CentOS-7/yaml_cpp/src/yaml_cpp/src/emitterutils.h /home/cmartin/dev/third_party/rez-packages/yaml_cpp/0.6.2/build/platform-linux/arch-x86_64/os-CentOS-7/yaml_cpp/src/yaml_cpp/src/exp.h /home/cmartin/dev/third_party/rez-packages/yaml_cpp/0.6.2/build/platform-linux/arch-x86_64/os-CentOS-7/yaml_cpp/src/yaml_cpp/src/indentation.h /home/cmartin/dev/third_party/rez-packages/yaml_cpp/0.6.2/build/platform-linux/arch-x86_64/os-CentOS-7/yaml_cpp/src/yaml_cpp/src/nodebuilder.h /home/cmartin/dev/third_party/rez-packages/yaml_cpp/0.6.2/build/platform-linux/arch-x86_64/os-CentOS-7/yaml_cpp/src/yaml_cpp/src/nodeevents.h /home/cmartin/dev/third_party/rez-packages/yaml_cpp/0.6.2/build/platform-linux/arch-x86_64/os-CentOS-7/yaml_cpp/src/yaml_cpp/src/ptr_vector.h /home/cmartin/dev/third_party/rez-packages/yaml_cpp/0.6.2/build/platform-linux/arch-x86_64/os-CentOS-7/yaml_cpp/src/yaml_cpp/src/regex_yaml.h /home/cmartin/dev/third_party/rez-packages/yaml_cpp/0.6.2/build/platform-linux/arch-x86_64/os-CentOS-7/yaml_cpp/src/yaml_cpp/src/regeximpl.h /home/cmartin/dev/third_party/rez-packages/yaml_cpp/0.6.2/build/platform-linux/arch-x86_64/os-CentOS-7/yaml_cpp/src/yaml_cpp/src/scanner.h /home/cmartin/dev/third_party/rez-packages/yaml_cpp/0.6.2/build/platform-linux/arch-x86_64/os-CentOS-7/yaml_cpp/src/yaml_cpp/src/scanscalar.h /home/cmartin/dev/third_party/rez-packages/yaml_cpp/0.6.2/build/platform-linux/arch-x86_64/os-CentOS-7/yaml_cpp/src/yaml_cpp/src/scantag.h /home/cmartin/dev/third_party/rez-packages/yaml_cpp/0.6.2/build/platform-linux/arch-x86_64/os-CentOS-7/yaml_cpp/src/yaml_cpp/src/setting.h /home/cmartin/dev/third_party/rez-packages/yaml_cpp/0.6.2/build/platform-linux/arch-x86_64/os-CentOS-7/yaml_cpp/src/yaml_cpp/src/singledocparser.h /home/cmartin/dev/third_party/rez-packages/yaml_cpp/0.6.2/build/platform-linux/arch-x86_64/os-CentOS-7/yaml_cpp/src/yaml_cpp/src/stream.h /home/cmartin/dev/third_party/rez-packages/yaml_cpp/0.6.2/build/platform-linux/arch-x86_64/os-CentOS-7/yaml_cpp/src/yaml_cpp/src/streamcharsource.h /home/cmartin/dev/third_party/rez-packages/yaml_cpp/0.6.2/build/platform-linux/arch-x86_64/os-CentOS-7/yaml_cpp/src/yaml_cpp/src/stringsource.h /home/cmartin/dev/third_party/rez-packages/yaml_cpp/0.6.2/build/platform-linux/arch-x86_64/os-CentOS-7/yaml_cpp/src/yaml_cpp/src/tag.h /home/cmartin/dev/third_party/rez-packages/yaml_cpp/0.6.2/build/platform-linux/arch-x86_64/os-CentOS-7/yaml_cpp/src/yaml_cpp/src/token.h /home/cmartin/dev/third_party/rez-packages/yaml_cpp/0.6.2/build/platform-linux/arch-x86_64/os-CentOS-7/yaml_cpp/src/yaml_cpp/src/contrib/graphbuilder.cpp /home/cmartin/dev/third_party/rez-packages/yaml_cpp/0.6.2/build/platform-linux/arch-x86_64/os-CentOS-7/yaml_cpp/src/yaml_cpp/src/contrib/graphbuilderadapter.cpp /home/cmartin/dev/third_party/rez-packages/yaml_cpp/0.6.2/build/platform-linux/arch-x86_64/os-CentOS-7/yaml_cpp/src/yaml_cpp/include/yaml-cpp/contrib/anchordict.h /home/cmartin/dev/third_party/rez-packages/yaml_cpp/0.6.2/build/platform-linux/arch-x86_64/os-CentOS-7/yaml_cpp/src/yaml_cpp/include/yaml-cpp/contrib/graphbuilder.h /home/cmartin/dev/third_party/rez-packages/yaml_cpp/0.6.2/build/platform-linux/arch-x86_64/os-CentOS-7/yaml_cpp/src/yaml_cpp/src/contrib/graphbuilderadapter.h /home/cmartin/dev/third_party/rez-packages/yaml_cpp/0.6.2/build/platform-linux/arch-x86_64/os-CentOS-7/yaml_cpp/src/yaml_cpp/test/main.cpp /home/cmartin/dev/third_party/rez-packages/yaml_cpp/0.6.2/build/platform-linux/arch-x86_64/os-CentOS-7/yaml_cpp/src/yaml_cpp/test/ostream_wrapper_test.cpp /home/cmartin/dev/third_party/rez-packages/yaml_cpp/0.6.2/build/platform-linux/arch-x86_64/os-CentOS-7/yaml_cpp/src/yaml_cpp/test/regex_test.cpp /home/cmartin/dev/third_party/rez-packages/yaml_cpp/0.6.2/build/platform-linux/arch-x86_64/os-CentOS-7/yaml_cpp/src/yaml_cpp/test/integration/emitter_test.cpp /home/cmartin/dev/third_party/rez-packages/yaml_cpp/0.6.2/build/platform-linux/arch-x86_64/os-CentOS-7/yaml_cpp/src/yaml_cpp/test/integration/encoding_test.cpp /home/cmartin/dev/third_party/rez-packages/yaml_cpp/0.6.2/build/platform-linux/arch-x86_64/os-CentOS-7/yaml_cpp/src/yaml_cpp/test/integration/gen_emitter_test.cpp /home/cmartin/dev/third_party/rez-packages/yaml_cpp/0.6.2/build/platform-linux/arch-x86_64/os-CentOS-7/yaml_cpp/src/yaml_cpp/test/integration/handler_spec_test.cpp /home/cmartin/dev/third_party/rez-packages/yaml_cpp/0.6.2/build/platform-linux/arch-x86_64/os-CentOS-7/yaml_cpp/src/yaml_cpp/test/integration/handler_test.cpp /home/cmartin/dev/third_party/rez-packages/yaml_cpp/0.6.2/build/platform-linux/arch-x86_64/os-CentOS-7/yaml_cpp/src/yaml_cpp/test/integration/load_node_test.cpp /home/cmartin/dev/third_party/rez-packages/yaml_cpp/0.6.2/build/platform-linux/arch-x86_64/os-CentOS-7/yaml_cpp/src/yaml_cpp/test/integration/node_spec_test.cpp /home/cmartin/dev/third_party/rez-packages/yaml_cpp/0.6.2/build/platform-linux/arch-x86_64/os-CentOS-7/yaml_cpp/src/yaml_cpp/test/node/node_test.cpp /home/cmartin/dev/third_party/rez-packages/yaml_cpp/0.6.2/build/platform-linux/arch-x86_64/os-CentOS-7/yaml_cpp/src/yaml_cpp/test/handler_test.h /home/cmartin/dev/third_party/rez-packages/yaml_cpp/0.6.2/build/platform-linux/arch-x86_64/os-CentOS-7/yaml_cpp/src/yaml_cpp/test/mock_event_handler.h /home/cmartin/dev/third_party/rez-packages/yaml_cpp/0.6.2/build/platform-linux/arch-x86_64/os-CentOS-7/yaml_cpp/src/yaml_cpp/test/specexamples.h /home/cmartin/dev/third_party/rez-packages/yaml_cpp/0.6.2/build/platform-linux/arch-x86_64/os-CentOS-7/yaml_cpp/src/yaml_cpp/util/parse.cpp /home/cmartin/dev/third_party/rez-packages/yaml_cpp/0.6.2/build/platform-linux/arch-x86_64/os-CentOS-7/yaml_cpp/src/yaml_cpp/util/sandbox.cpp /home/cmartin/dev/third_party/rez-packages/yaml_cpp/0.6.2/build/platform-linux/arch-x86_64/os-CentOS-7/yaml_cpp/src/yaml_cpp/util/read.cpp

format: CMakeFiles/format
format: CMakeFiles/format.dir/build.make

.PHONY : format

# Rule to build all files generated by this target.
CMakeFiles/format.dir/build: format

.PHONY : CMakeFiles/format.dir/build

CMakeFiles/format.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/format.dir/cmake_clean.cmake
.PHONY : CMakeFiles/format.dir/clean

CMakeFiles/format.dir/depend:
	cd /home/cmartin/dev/third_party/rez-packages/yaml_cpp/0.6.2/build/platform-linux/arch-x86_64/os-CentOS-7/yaml_cpp/src/yaml_cpp && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/cmartin/dev/third_party/rez-packages/yaml_cpp/0.6.2/build/platform-linux/arch-x86_64/os-CentOS-7/yaml_cpp/src/yaml_cpp /home/cmartin/dev/third_party/rez-packages/yaml_cpp/0.6.2/build/platform-linux/arch-x86_64/os-CentOS-7/yaml_cpp/src/yaml_cpp /home/cmartin/dev/third_party/rez-packages/yaml_cpp/0.6.2/build/platform-linux/arch-x86_64/os-CentOS-7/yaml_cpp/src/yaml_cpp /home/cmartin/dev/third_party/rez-packages/yaml_cpp/0.6.2/build/platform-linux/arch-x86_64/os-CentOS-7/yaml_cpp/src/yaml_cpp /home/cmartin/dev/third_party/rez-packages/yaml_cpp/0.6.2/build/platform-linux/arch-x86_64/os-CentOS-7/yaml_cpp/src/yaml_cpp/CMakeFiles/format.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/format.dir/depend

