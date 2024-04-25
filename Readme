# FPGA-Vision Docker Environment

This Dockerfile creates an Ubuntu-based Docker image that contains gcc11, which is necessary for compiling and running the codes from the [FPGA-Vision](https://github.com/Marco-Winzker/FPGA-Vision) repository.

## Features

- Ubuntu Image with gcc11 installed.
- Automatically compiles `lane_float.c`.
- Executes the compiled code for every image in `/Test-Images/`.

## Building the Image

To build this Docker image, follow these steps:

1. Open a terminal in the directory containing the Dockerfile.
2. Build the image with the following command:

``
docker build -t <name_of_image> .
``

3. Once the build is complete, you can run the container using:
``
docker run --name <name_of_container> <name_of_image>
``

## Copying Files to Your Computer

To copy the test images from the Docker container to your local machine, use the following command:

``
docker cp <name_of_container>:/FPGA-Vision/Test-Images .
``

This will copy the contents of the `/FPGA-Vision/Test-Images` directory from the container to your current working directory.

## Requirements

- Docker installed on your computer.

## Usage

After building and running the container, the `lane_float.c` program will execute and process the images in the `/Test-Images/` directory. The results will be available within the container, which you can then copy to your local machine as described above.

For more information on how to use Docker and manage containers, please refer to the Docker documentation.
