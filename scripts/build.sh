#!/bin/bash

rm -rf "${PWD}/out"

cmake -S "${PWD}" -B "${PWD}/out/build" -G Ninja

cmake --build "${PWD}/out/build"

cmake --install "${PWD}/out/build" --prefix "${PWD}/out/target"

export LD_LIBRARY_PATH="${PWD}/out/target/lib:$LD_LIBRARY_PATH"
"${PWD}"/out/target/bin/ProtobufExampleCmd
