# Multi-Threaded Ray Tracer

A C++ implementation of a multi-threaded ray tracer that generates 3D scenes with metallic materials and reflection effects.

## Features

- Multi-threaded rendering for improved performance
- Support for metallic materials and reflection effects
- Configurable rendering parameters (resolution, samples, bounce depth)
- PPM format image output
- Random scene generation

## Requirements

- C++17 or higher
- System with POSIX thread support
- Make build tool

## Building

```bash
make
```

## Usage

```bash
./raytracer [options]
```

### Command Line Options

- `-d <depth>`: Maximum number of ray bounces
- `-s <samples>`: Number of samples per pixel
- `-r <width>x<height>`: Output image resolution
- `-f <filename>`: Output filename (PPM format)
- `-n <0|1>`: Disable output (0: output enabled, 1: output disabled)

### Example

```bash
./raytracer -d 10 -s 50 -r 720x480 -f render.ppm
```

## Default Parameters

- Image width: 1600 pixels
- Image height: 1200 pixels
- Number of samples: 60
- Bounce depth: 30
- Number of spheres in scene: 12

## Project Structure

- `raytracer.cpp`: Main program file with rendering logic and multi-threading implementation
- `raytracer.h`: Core definitions and functions for ray tracing
- `maths.h`: Mathematical utilities and basic data structures
- `Makefile`: Project build configuration

## Implementation Details

- Utilizes 16 threads for parallel rendering
- Depth of field effect (controlled by aperture and focus distance)
- Metallic material reflection model
- Random scene generation with spheres of varying positions and materials
- PPM format output for rendered images

## Performance Optimizations

- Multi-threaded parallel processing
- -O3 compilation optimization
- Native architecture optimization
- Thread-local random number generation