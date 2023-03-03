#!/bin/bash
mkdir -p bin build example/common example/clients example/workers lib src/include test
touch ./CMakeLists.txt ./src/CMakeLists.txt ./example/CMakeLists.txt ./example/clients/CMakeLists.txt ./example/workers/CMakeLists.txt
echo "cmake_minimum_required(VERSION 3.0)" >> ./CMakeLists.txt
echo "" >>./CMakeLists.txt
echo "project(XXXX)" >> ./CMakeLists.txt
echo "" >>./CMakeLists.txt
echo 'set(CMAKE_BUILD_TYPE "Debug")' >> ./CMakeLists.txt
echo "" >>./CMakeLists.txt
echo "set(EXECUTABLE_OUTPUT_PATH ${PROJECT_SOURCE_DIR}/bin)" >> ./CMakeLists.txt
echo "set(LIBRARY_OUTPUT_PATH ${PROJECT_SOURCE_DIR}/lib)" >> ./CMakeLists.txt
echo "" >> ./CMakeLists.txt
echo "include_directories(${PROJECT_SOURCE_DIR}/src/include)" >> ./CMakeLists.txt
echo "include_directories(${PROJECT_SOURCE_DIR}/example)" >> ./CMakeLists.txt
echo "include_directories(${PROJECT_SOURCE_DIR}/example/common)" >> ./CMakeLists.txt
echo "" >> ./CMakeLists.txt
echo "link_directories(${PROJECT_SOURCE_DIR}/lib)" >> ./CMakeLists.txt
echo "" >> ./CMakeLists.txt
echo "# rpc frame" >> ./CMakeLists.txt
echo "add_subdirectory(src)" >> ./CMakeLists.txt
echo "# worker" >> ./CMakeLists.txt
echo "add_subdirectory(example)" >> ./CMakeLists.txt
