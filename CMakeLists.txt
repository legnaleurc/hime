cmake_minimum_required(VERSION 3.0)

project(hime)

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

list(APPEND CMAKE_MODULE_PATH "${CMAKE_SOURCE_DIR}/cmake/modules")

# Detect features
include("detect_gtk2")
include("detect_gtk3")
include("detect_qt3")
include("detect_qt4")
include("detect_qt5")
