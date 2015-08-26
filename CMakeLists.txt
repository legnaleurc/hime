cmake_minimum_required(VERSION 2.8.9)

project(hime)
set(PROJECT_VERSION 0.9.10)

# Optional Packages
option(WITH_GTK "which gtk+ version to compile against [default: 2.0]" "2.0")

# Optional Features
option(ENABLE_NLS "enable Native Language Support [default: enable]" TRUE)
option(ENABLE_XIM "enable the support of XIM [default: enable]" TRUE)
option(ENABLE_SYSTEM_TRAY "enable system tray support [default: enable]" TRUE)
option(ENABLE_TSIN "enable Tsin input method [default: enable]" TRUE)

# System Specific Pathes
# TODO should modify QT_* directly


# NOTE OS detection is done by CMake

# setup environments
list(APPEND CMAKE_MODULE_PATH "${CMAKE_SOURCE_DIR}/cmake/modules")
include(GNUInstallDirs)
find_package(PkgConfig REQUIRED)

# Detect features
find_package(Gtk2IMModule)
find_package(Gtk3IMModule)
find_package(Qt3IMModule)
find_package(Qt4IMModule)
find_package(Qt5IMModule)
find_package(Anthy)
find_package(Appindicator)
find_package(Chewing)
find_package(Lib64)

add_definitions(-DHIME_VERSION="${PROJECT_VERSION}")
# FIXME: Set properly values here.
add_definitions(-DHIME_BIN_DIR="")
add_definitions(-DHIME_DEFAULT_ICON_DIR="")
add_definitions(-DHIME_OGG_DIR="")
add_definitions(-DHIME_SCRIPT_DIR="")
add_definitions(-DHIME_TABLE_DIR="")
add_definitions(-DSYS_ICON_DIR="")

add_subdirectory(${CMAKE_SOURCE_DIR}/src)
