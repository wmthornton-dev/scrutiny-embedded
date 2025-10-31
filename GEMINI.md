# Scrutiny Embedded C++ Library

## Project Overview

This repository contains the source code for Scrutiny Embedded, a C++ instrumentation library designed for debugging and monitoring embedded systems. It provides a communication channel between a device and the Scrutiny debugger, allowing for data acquisition, datalogging, and other debugging functionalities. The library is written in C++11 and is designed to be portable across different embedded platforms.

## Build System

The project uses `Waf` for building.

### Building the Project

The `scripts/build.sh` script is the main entry point for building the project.

**Default Build:**

To build the library in release mode, run:

```bash
./scripts/build.sh
```

This will create a `build-dev` directory with the compiled library.

**Build with Tests:**

To build the project with the unit tests enabled, set the `SCRUTINY_BUILD_TEST` environment variable to `ON`:

```bash
SCRUTINY_BUILD_TEST=ON ./scripts/build.sh
```

### Running Tests

After building the project with tests enabled, the unit tests can be run using the `scripts/runtests.sh` script:

```bash
./scripts/runtests.sh
```

## Development Conventions

### C++ Standard

The project adheres to the C++11 standard.
