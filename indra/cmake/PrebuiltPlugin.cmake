# -*- cmake -*-
# Control if the plugin and modules should be built or downloaded

if(NOT DEFINED ${CMAKE_CURRENT_LIST_FILE}_INCLUDED)
set(${CMAKE_CURRENT_LIST_FILE}_INCLUDED "YES")

include(Prebuilt)

set(SKIP_BUILDING_PLUGIN OFF)

if (WINDOWS)
    if (WORD_SIZE EQUAL 64)
        set(USE_PREBUILT_PLUGIN OFF CACHE BOOL "Don't compile plugins, download them instead")
        if (USE_PREBUILT_PLUGIN)
            set(SKIP_BUILDING_PLUGIN ON)
        endif (USE_PREBUILT_PLUGIN)
    endif (WORD_SIZE EQUAL 64)
endif (WINDOWS)

endif(NOT DEFINED ${CMAKE_CURRENT_LIST_FILE}_INCLUDED)
