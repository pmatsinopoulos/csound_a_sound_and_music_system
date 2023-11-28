// On Mac OSX: Compile and link with:
//
// 1st Option:
// ------------
// g++ 0009-simple-csound-api-example.cpp -o 0009 \
//  -I/Library/Frameworks/CsoundLib64.framework/Headers \
//  -F/library/Frameworks -framework CsoundLib64
//
// 2nd Option:
// -----------
// Use "make" to create the "0009" file.
//
// 3rd Option:
// ------------
// Use "cmake" as follows:
// 1. Create the file "CMakeLists.txt"
// as
//
// # CMakeLists.txt
// # ---------------
// cmake_minimum_required(VERSION 3.10)
// project(CsoundAPIExample)
//
// set(CMAKE_CXX_STANDARD 20)
//
// find_library(CSND64_LIB CsoundLib64)
//
// set(SOURCE_FILES 0009-simple-csound-api-example.cpp)
//
// add_executable(0009 ${SOURCE_FILES})
//
// target_include_directories(0009 PRIVATE /Library/Frameworks/CsoundLib64.framework/Headers)
//
// target_link_libraries(0009 ${CSND64_LIB})
//
// ------ end of CMakeLists.txt -----
//
// 2. create the directory "build"
// 3. cd build
// 4. cmake ..
// 5. cmake --build .
// Last step will generate the file "0009" inside the "build" directory
//
#include <csound.hpp>

int main(int argc, char** argv) {
  Csound csound; // csound object
  int error; // error code

  // compile CSD and start the engine
  error = csound.Compile(argc, (const char **)argv);

  // performance loop
  while(!error) {
    error = csound.PerformKsmps();
  }

  return 0;
}
