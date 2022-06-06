FROM ubuntu:22.04

RUN apt update && \
    apt install -y git g++-10 cmake ninja-build python3-pip pkg-config && \
    pip3 install conan && \
    conan profile new --detect default && \
    conan profile update settings.compiler.version=10 default && \
    conan profile update settings.compiler.libcxx=libstdc++11 default
