project(ProtobufExamplePkg)
cmake_minimum_required(VERSION 3.16)

find_package(Protobuf REQUIRED)
include_directories(${Protobuf_INCLUDE_DIRS} ${PROJECT_BINARY_DIR})


file(GLOB_RECURSE SOURCES "src/*.cpp" "src/*.h")


set(PROTO_SRC_DIR ${CMAKE_SOURCE_DIR}/api/proto)
file(GLOB PROTO_FILES ${PROTO_SRC_DIR}/*.proto)

protobuf_generate_cpp(PROTO_SRCS PROTO_HDRS ${PROTO_FILES})

add_library(${PROJECT_NAME} SHARED ${SOURCES} ${PROTO_SRCS} ${PROTO_HDRS})

target_link_libraries(${PROJECT_NAME} PUBLIC ${Protobuf_LIBRARIES})

target_include_directories(${PROJECT_NAME} PUBLIC src)


install(TARGETS ${PROJECT_NAME}
        RUNTIME DESTINATION lib)
