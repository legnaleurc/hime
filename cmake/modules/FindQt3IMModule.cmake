option(ENABLE_QT3_IM_MODULE "enable QT3 im-module [default: disable]" FALSE)

if(NOT ${ENABLE_QT3_IM_MODULE})
    return()
endif()


find_package(Qt3)

if (NOT QT_FOUND)
    message(WARNING "Cannot find Qt3 library, set ENABLE_QT3_IM_MODULE to FALSE")
    set(ENABLE_QT3_IM_MODULE FALSE)
endif()
