cmake_minimum_required(VERSION 3.26)

project(svgColors LANGUAGES CXX)

set(CMAKE_INCLUDE_CURRENT_DIR ON)

set(CMAKE_AUTOUIC ON)
set(CMAKE_AUTOMOC ON)
set(CMAKE_AUTORCC ON)

set(CMAKE_CXX_STANDARD 17)
set(CMAKE_CXX_STANDARD_REQUIRED ON)

find_package(Qt6 COMPONENTS
	Core
	Quick
	REQUIRED
)
qt_standard_project_setup(REQUIRES 6.5)

set(PROJECT_SOURCE
	main.cpp
)
set(PROJECT_QML
	main.qml
	ColorDelegate.qml
	ColorModel.qml
	SortSelector.qml
)
source_group(QML FILES ${PROJECT_QML})

qt_add_executable(svgColors_app
	${PROJECT_SOURCE}
)

qt_add_qml_module(svgColors_app
	URI svgColors
	VERSION 1.0
	QML_FILES ${PROJECT_QML}
)

target_link_libraries(svgColors_app PRIVATE
	Qt::Core
	Qt::Quick
)
