option(ENABLE_GTK3_IM_MODULE "enable GTK+ 3.x im-module [default: auto-detect]" TRUE)

if(NOT ${ENABLE_GTK3_IM_MODULE})
    return()
endif()


pkg_check_modules(GTK3 gtk+-3.0)

if (NOT GTK3_FOUND)
    message(WARNING "Cannot find gtk3 library, set ENABLE_GTK3_IM_MODULE to FALSE")
    set(ENABLE_GTK3_IM_MODULE FALSE)
endif()
