cmake_minimum_required(VERSION 3.10)
project(CsoundAPIExample)

set(CMAKE_CXX_STANDARD 20)

find_library(CSND64_LIB CsoundLib64)

set(SOURCE_FILES 0009-simple-csound-api-example.cpp)

add_executable(0009 ${SOURCE_FILES})

target_include_directories(0009 PRIVATE /Library/Frameworks/CsoundLib64.framework/Headers)

target_link_libraries(0009 ${CSND64_LIB})
