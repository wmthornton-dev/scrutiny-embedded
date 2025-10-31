#!/bin/bash
set -e

# Default values
BUILD_TEST=${SCRUTINY_BUILD_TEST:-OFF}
BUILD_TESTAPP=${SCRUTINY_BUILD_TESTAPP:-OFF}
BUILD_C_TESTAPP=${SCRUTINY_BUILD_C_TESTAPP:-OFF}

# Waf command
WAF_CMD="./waf"

# Configure command
CONFIGURE_CMD="$WAF_CMD configure --out=build-dev"

if [ "$BUILD_TEST" = "ON" ]; then
    CONFIGURE_CMD="$CONFIGURE_CMD --build-test"
fi

if [ "$BUILD_TESTAPP" = "ON" ]; then
    CONFIGURE_CMD="$CONFIGURE_CMD --build-testapp"
fi

if [ "$BUILD_C_TESTAPP" = "ON" ]; then
    CONFIGURE_CMD="$CONFIGURE_CMD --build-c-testapp"
fi

# Build command
BUILD_CMD="$WAF_CMD build"

# Run commands
$WAF_CMD clean
$CONFIGURE_CMD
$BUILD_CMD
