option(ENABLE_GTK2_IM_MODULE "enable GTK+ 2.x im-module [default: auto-detect]" TRUE)

if(NOT ${ENABLE_GTK2_IM_MODULE})
    return()
endif()


find_package(GTK2)

if (NOT GTK2_FOUND)
    message(WARNING "Cannot find gtk2 library, set ENABLE_GTK2_IM_MODULE to FALSE")
    set(ENABLE_GTK2_IM_MODULE FALSE)
endif()
