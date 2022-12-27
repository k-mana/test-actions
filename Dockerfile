From ubuntu:22.04

RUN apt-get update && apt-get install -y --no-install-recommends \
    build-essential \
    cmake \
    gcc-arm-none-eabi \
    libnewlib-arm-none-eabi \
    libstdc++-arm-none-eabi-newlib \
    python3 \
    rake \
  && rm -rf /var/lib/apt/lists/*

WORKDIR /work

CMD cmake -B build && cmake --build build
