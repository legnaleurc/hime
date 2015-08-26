# FIXME: Possible need a loop to do so
pkg_check_modules(GLIB2 REQUIRED glib-2.0)
include_directories(${GLIB2_INCLUDE_DIRS})

# FIXME: Shall be setup by FindGtk*IMModule?
pkg_check_modules(GDK2 REQUIRED gdk-2.0)
include_directories(${GDK2_INCLUDE_DIRS})

pkg_check_modules(ATK REQUIRED atk)
include_directories(${ATK_INCLUDE_DIRS})

pkg_check_modules(X11 REQUIRED x11)
include_directories(${X11_INCLUDE_DIRS})

pkg_check_modules(GTK2 REQUIRED gtk+-2.0)
include_directories(${GTK2_INCLUDE_DIRS})

pkg_check_modules(XTST REQUIRED xtst)
include_directories(${XTST_INCLUDE_DIRS})

find_library(LIBM m)

include_directories(
	"IMdkit/include"
	"im-client"
)

add_library(HIME_PHO_O OBJECT
	win-pho.c
	pho.c
	pho-util.c
	pho-sym.c
	table-update.c
	pho-dbg.c
)

add_library(HIME_GTAB_O OBJECT
	gtab.c
	win-gtab.c
	gtab-util.c
	gtab-list.c
	gtab-buf.c
)

add_library(HIME_TSIN_O OBJECT
	tsin.c
	tsin-util.c
	win0.c
	win1.c
	tsin-parse.c
)

add_library(OBJS OBJECT
	hime.c
	eve.c
	util.c
	hime-conf.c
	hime-settings.c
	locale.c
	hime-icon.c about.c
	hime-exec-script.c
	pho-play.c
	cache.c
	gtk_bug_fix.c
	phrase-save-menu.c
	hime-common.c
	phrase.c
	t2s-lookup.c
	gtab-use-count.c
	win-save-phrase.c
	unix-exec.c
	pho-kbm-name.c
	statistic.c
	tsin-scan.c
	hime-module.c
	lang.c
	hime-module-cb.c
	gtab-init.c
	fullchar.c
	gtab-tsin-fname.c
	win-message.c
	win-sym.c
	win-inmd-switch.c
	pinyin.c
	win-pho-near.c
	win-kbm.c
	pho2pinyin.c
)

add_library(OBJ_IMSRV OBJECT
	im-addr.c
	im-dispatch.c
	im-srv.c
	hime-crypt.c
)

add_executable(hime
	$<TARGET_OBJECTS:HIME_GTAB_O>
	$<TARGET_OBJECTS:HIME_PHO_O>
	$<TARGET_OBJECTS:HIME_TSIN_O>
	$<TARGET_OBJECTS:OBJ_IMSRV>
	$<TARGET_OBJECTS:OBJS>
)
target_link_libraries(hime ${GLIB2_LIBRARIES})
target_link_libraries(hime ${GDK2_LIBRARIES})
target_link_libraries(hime ${ATK_LIBRARIES})
target_link_libraries(hime ${X11_LIBRARIES})
target_link_libraries(hime ${GTK2_LIBRARIES})
target_link_libraries(hime ${XTST_LIBRARIES})
target_link_libraries(hime ${LIBM})
target_link_libraries(hime ${CMAKE_DL_LIBS})
