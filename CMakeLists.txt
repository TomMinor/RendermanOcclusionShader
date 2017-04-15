cmake_minimum_required(VERSION 2.8)
project(PxrOcclusion)

set(CMAKE_SUPPRESS_REGENERATION true)

list(APPEND CMAKE_MODULE_PATH "${CMAKE_CURRENT_LIST_DIR}/cmake")

find_package(PRMAN REQUIRED)
add_definitions(${PRMAN_COMPILE_FLAGS})
include_directories(${PRMAN_INCLUDE_DIR})

file(GLOB CPP_SOURCES
    ${CMAKE_SOURCE_DIR}/src/PxrOcclusion.cpp
  )

file(GLOB RFM_ARGS_SOURCES
	${CMAKE_SOURCE_DIR}/src/args/PxrOcclusion.args
	)


add_library(${PROJECT_NAME} ${CPP_SOURCES} ${RFM_ARGS_SOURCES})

source_group("RfmArgs" FILES ${RFM_ARGS_SOURCES})

target_link_libraries(${PROJECT_NAME}
		${PRMAN_LIBRARIES}
	)
