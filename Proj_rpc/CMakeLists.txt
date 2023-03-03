cmake_minimum_required(VERSION 3.0)

project(XXXX)

set(CMAKE_BUILD_TYPE "Debug")

set(EXECUTABLE_OUTPUT_PATH /bin)
set(LIBRARY_OUTPUT_PATH /lib)

include_directories(/src/include)
include_directories(/example)
include_directories(/example/common)

link_directories(/lib)

# rpc frame
add_subdirectory(src)
# worker
add_subdirectory(example)
