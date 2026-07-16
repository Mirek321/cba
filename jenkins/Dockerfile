FROM jenkins/inbound-agent:latest-jdk21

USER root

RUN apt-get update && \
    apt-get install -y \
        build-essential \
        cmake \
        git \
        ninja-build \
        curl \
        zip \
        unzip \
        tar \
        pkg-config \
        libboost-all-dev && \
    rm -rf /var/lib/apt/lists/*

RUN git clone https://github.com/microsoft/vcpkg.git /opt/vcpkg && \
    /opt/vcpkg/bootstrap-vcpkg.sh

RUN /opt/vcpkg/vcpkg install protobuf:x64-linux

ENV CMAKE_TOOLCHAIN_FILE=/opt/vcpkg/scripts/buildsystems/vcpkg.cmake
ENV PATH="/opt/vcpkg/installed/x64-linux/tools/protobuf:$PATH"

USER jenkins