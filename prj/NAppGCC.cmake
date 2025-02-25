#------------------------------------------------------------------------------
# This is part of NAppGUI build system
# See README.md and LICENSE.txt
#------------------------------------------------------------------------------

macro(nap_gcc_flags arch)

    # Warnings
    set(FLAGS "-Wall -Wextra -pedantic -Wno-long-long -Wno-overlength-strings")
    set(CMAKE_C_FLAGS "${CMAKE_C_FLAGS} ${FLAGS}")
    set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} ${FLAGS}")

    # Force ANSI-C for old compilers
    if(${CMAKE_VERSION} VERSION_LESS "3.1.0" OR ${CMAKE_CXX_COMPILER_VERSION} VERSION_LESS "5.0.0")
        set(CMAKE_C_FLAGS "${CMAKE_C_FLAGS} -std=gnu90")
    endif()

    # Architecture
    if (${arch} STREQUAL "x86")
        set(ARCH_FLAG "-m32")

    elseif (${arch} STREQUAL "x64")
        set(ARCH_FLAG "-m64")

    elseif (${arch} STREQUAL "arm64")
        # Ok!

    elseif (${arch} STREQUAL "arm")
        set(ARCH_FLAG "-march=armv7-a")

    endif()

    if (ARCH_FLAG)
        set(CMAKE_C_FLAGS "${CMAKE_C_FLAGS} ${ARCH_FLAG}")
        set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} ${ARCH_FLAG}")
    endif()

endmacro()
