FROM registry.astralinux.ru/library/alse:1.7.4

RUN apt update && \
    apt install -y \
    build-essential \
    cmake \
    git \
    protobuf-compiler \
    libprotobuf-dev \
    ninja-build

WORKDIR /app
