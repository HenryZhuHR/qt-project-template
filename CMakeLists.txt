cmake_minimum_required(VERSION 3.23)
project(qt-project-template)

set(CMAKE_CXX_STANDARD 20)
set(CMAKE_AUTOMOC ON)
set(CMAKE_AUTORCC ON)
set(CMAKE_AUTOUIC ON)

set(CMAKE_PREFIX_PATH "$HOME/program/qtbase-6.4.0/lib/cmake")


find_package(Qt6 COMPONENTS
        Core
        Gui
        Widgets
        REQUIRED)

if(${Qt6_FOUND})
        message(STATUS "Qt Found in: ${Qt6_DIR}")
else()
        message(FATAL_ERROR "Not found Qt6")
endif()



add_subdirectory(app)
