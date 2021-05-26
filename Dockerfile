# --------------------------------------------------------------
# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the MIT License.
# --------------------------------------------------------------
# Dockerfile to run ONNXRuntime with source build for CPU
# Reference: https://github.com/microsoft/onnxruntime/blob/master/dockerfiles/Dockerfile.source

FROM ubuntu:18.04

ENV DEBIAN_FRONTEND=noninteractive
RUN apt-get update && apt-get install -y --no-install-recommends python3-dev ca-certificates g++ python3-numpy gcc make git python3-setuptools python3-wheel python3-pip aria2 && aria2c -q -d /tmp -o cmake-3.18.2-Linux-x86_64.tar.gz https://github.com/Kitware/CMake/releases/download/v3.18.2/cmake-3.18.2-Linux-x86_64.tar.gz && tar -zxf /tmp/cmake-3.18.2-Linux-x86_64.tar.gz --strip=1 -C /usr
