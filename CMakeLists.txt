cmake_minimum_required(VERSION 3.13)

project(checkedc-parson
        VERSION 0.1
        DESCRIPTION "An example application that simulates a typical image parsing program")

set(CMAKE_CXX_STANDARD 17)
set(CMAKE_CXX_STANDARD_REQUIRED ON)
set(CMAKE_CXX_EXTENSIONS OFF)
SET (CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -ldl -lpthread")

if (CMAKE_CXX_COMPILER_ID MATCHES "Clang" OR CMAKE_CXX_COMPILER_ID STREQUAL "GNU")
    add_compile_options( -Wall -Wextra)
    add_link_options(-ldl -lstdc++)
endif()
add_executable(final "${CMAKE_SOURCE_DIR}/tests.c"
        "${CMAKE_SOURCE_DIR}/parson.tainted.c"
        )
target_include_directories(final PUBLIC "${CMAKE_SOURCE_DIR}/parson.h"
        )
target_link_libraries(final "${CMAKE_SOURCE_DIR}/static_libraries/tainted.a"
        "${CMAKE_SOURCE_DIR}/static_libraries/libSBX_CON_LIB.a"
        "${CMAKE_SOURCE_DIR}/static_libraries/libisc_lib_final.a"
        dl)
set_target_properties(final PROPERTIES LINKER_LANGUAGE CXX)

#
#add_executable(SIMPLE "${CMAKE_SOURCE_DIR}/sbx_interface_def/simple_main.c")
#target_link_libraries(SIMPLE final)
