option(ENABLE_ANTHY "disable Anthy input method [default: auto-detect]" TRUE)

if(NOT ${ENABLE_ANTHY})
    return()
endif()


pkg_check_modules(ANTHY anthy)

if (NOT ANTHY_FOUND)
    message(WARNING "Cannot find anthy library, set ENABLE_ANTHY to FALSE")
    set(ENABLE_ANTHY FALSE)
endif()
