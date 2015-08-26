option(ENABLE_CHEWING "disable Chewing input method [default: auto-detect]" TRUE)

if (${ENABLE_CHEWING})
	pkg_check_modules(CHEWING chewing>=0.3.2)

	if (NOT CHEWING_FOUND)
		message(WARNING "Cannot find chewing library, set ENABLE_CHEWING to FALSE")
		set(ENABLE_CHEWING FALSE)
	endif()
endif()
