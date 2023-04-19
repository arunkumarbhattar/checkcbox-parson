cmake_minimum_required(VERSION 3.13)
set(CMAKE_C_COMPILER  /home/arun/Music/TypeFlexer/llvm/cmake-build-debug/bin/clang)
set(CMAKE_CXX_COMPILER /home/arun/Music/TypeFlexer/llvm/cmake-build-debug/bin/clang++)
project(checkedc-parson
        VERSION 0.1
        DESCRIPTION "An example application that simulates a typical image parsing program")


set(CMAKE_CXX_STANDARD 17)
set(CMAKE_CXX_STANDARD_REQUIRED ON)
set(CMAKE_CXX_EXTENSIONS OFF)
SET (CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -ldl -lpthread")

if (CMAKE_CXX_COMPILER_ID MATCHES "Clang" OR CMAKE_CXX_COMPILER_ID STREQUAL "GNU")
    add_link_options(-ldl -lstdc++)
endif()
add_executable(wasm "${CMAKE_SOURCE_DIR}/tests.c"
        "${CMAKE_SOURCE_DIR}/parson.wasm.c"
        )
target_compile_options(wasm PRIVATE -O3 -fPIE -Wall -Wextra -fwasmsbx -DWASM_SBX)
target_include_directories(wasm PUBLIC "${CMAKE_SOURCE_DIR}/parson.h"
        )
target_link_libraries(wasm
        "${CMAKE_SOURCE_DIR}/static_libraries/libSBX_CON_LIB.a"
        "${CMAKE_SOURCE_DIR}/static_libraries/libisc_lib_final.a"
        dl)
target_include_directories(wasm PUBLIC "${CMAKE_SOURCE_DIR}/parson.wasm.h"
        )
add_executable(NonWasm "${CMAKE_SOURCE_DIR}/tests.tainted.c"
        "${CMAKE_SOURCE_DIR}/parson.tainted.c"
        )
target_compile_options(NonWasm PRIVATE -O2 -fPIE -Wall -Wextra -fwasmsbx -DWASM_SBX)
target_include_directories(NonWasm PUBLIC "${CMAKE_SOURCE_DIR}/parson.tainted.h"
        )
target_link_libraries(NonWasm "${CMAKE_SOURCE_DIR}/static_libraries/tainted.a"
        "${CMAKE_SOURCE_DIR}/static_libraries/libSBX_CON_LIB.a"
        "${CMAKE_SOURCE_DIR}/static_libraries/libisc_lib_final.a"
        dl)
set_target_properties(NonWasm PROPERTIES LINKER_LANGUAGE CXX)

add_executable(Hoard "${CMAKE_SOURCE_DIR}/tests.tainted.c"
        "${CMAKE_SOURCE_DIR}/parson.tainted.c"
        )
target_compile_options(Hoard PRIVATE -fheapsbx -O2 -DHEAP_SBX)
target_include_directories(Hoard PUBLIC "${CMAKE_SOURCE_DIR}/parson.tainted.h"
        )
target_link_libraries(Hoard #"${CMAKE_SOURCE_DIR}/static_libraries/tainted.a"
        "${CMAKE_SOURCE_DIR}/static_libraries/libSBX_CON_LIB.a"
        "${CMAKE_SOURCE_DIR}/static_libraries/libisc_lib_final.a"
        "${CMAKE_SOURCE_DIR}/HoardLib/libhoard.so"
        "${CMAKE_SOURCE_DIR}/HoardLib/libprofile.a"
        dl)
set_target_properties(Hoard PROPERTIES LINKER_LANGUAGE CXX)