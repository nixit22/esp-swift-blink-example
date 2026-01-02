# esp-swift-blink-example

Port of ESP32 blink example from https://github.com/swiftlang/swift-embedded-examples using ESP-IDF components and module map.

## Components

This example uses 2 components:

### SwiftPlatform
This component provides the build integration and C interoperability shims required to compile and link Swift code for ESP-IDF targets. It includes CMake macros to build Swift code and export ESP-IDF components to Swift, along with Swift helpers for some ESP-IDF APIs.

### SwiftGPIO
SwiftGPIO provides small, Swifty helpers around the ESP-IDF GPIO C API. It exposes a concise, type-safe interface for configuring GPIO pins, reading input levels, and driving outputs from Swift.