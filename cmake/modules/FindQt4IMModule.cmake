option(ENABLE_QT4_IM_MODULE "enable QT4 im-module [default: auto-detect]" TRUE)

if(NOT ${ENABLE_QT4_IM_MODULE})
    return()
endif()


find_package(Qt4)

if (NOT QT4_FOUND)
    message(WARNING "Cannot find Qt4 library, set ENABLE_QT4_IM_MODULE to FALSE")
    set(ENABLE_QT4_IM_MODULE FALSE)
endif()
