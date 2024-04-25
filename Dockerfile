# Use Ubuntu 20.04 as base image
FROM ubuntu:jammy as builder

# Install necessary packages
RUN apt-get update && \
    apt-get install -y \
    build-essential \
    gcc-11 \
    g++-11 \
    git \
    && rm -rf /var/lib/apt/lists/*

# Set up symlinks for gcc and g++ to point to gcc-11 and g++-11 respectively
RUN update-alternatives --install /usr/bin/gcc gcc /usr/bin/gcc-11 100 && \
    update-alternatives --install /usr/bin/g++ g++ /usr/bin/g++-11 100

# Print gcc and g++ versions
RUN gcc --version && g++ --version

RUN git clone https://github.com/Marco-Winzker/FPGA-Vision.git

FROM builder AS final

WORKDIR FPGA-Vision

RUN gcc C-Files/lane_float.c -o lane_float -lm

RUN ./lane_float Test_Images/street_A 

RUN ./lane_float Test_Images/street_B

RUN ./lane_float Test_Images/street_C 

