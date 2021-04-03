FROM ubuntu:20.04

RUN apt update && \
    apt install -y software-properties-common && \
    add-apt-repository ppa:ubuntu-toolchain-r/test && \
    apt install -y git g++-10 cmake ninja-build python3-pip && \
    pip3 install conan && \
    conan profile new --detect default && \
    conan profile update settings.compiler.version=10 default && \
    conan profile update settings.compiler.libcxx=libstdc++11 default
