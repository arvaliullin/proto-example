project(ProtobufExampleCmd)

cmake_minimum_required(VERSION 3.16)

file(GLOB_RECURSE SOURCES "src/*.cpp" "src/*.h")

add_executable(${PROJECT_NAME} ${SOURCES})

target_link_libraries(${PROJECT_NAME} PRIVATE ProtobufExamplePkg)

install(TARGETS ${PROJECT_NAME}
        RUNTIME DESTINATION bin)
