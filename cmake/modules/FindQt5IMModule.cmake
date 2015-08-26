option(ENABLE_QT5_IM_MODULE "enable QT5 im-module [default: auto-detect]" TRUE)

if(NOT ${ENABLE_QT5_IM_MODULE})
    return()
endif()


find_package(Qt5Core)

if (NOT Qt5Core_FOUND)
    message(WARNING "Cannot find Qt5 library, set ENABLE_QT5_IM_MODULE to FALSE")
    set(ENABLE_QT5_IM_MODULE FALSE)
endif()
