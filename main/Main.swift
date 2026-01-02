//===----------------------------------------------------------------------===//
//
// This source file is part of the Swift open source project
//
// Copyright (c) 2024 Apple Inc. and the Swift project authors.
// Licensed under Apache License v2.0 with Runtime Library Exception
//
// See https://swift.org/LICENSE.txt for license information
//
//===----------------------------------------------------------------------===//
import Platform
import GPIO

let log = Logger(tag: "main")

// The code will blink an LED on GPIO8. To change the pin, modify Led(gpioPin: 8)
@_cdecl("app_main")
func main() {
  log.i("Hello from Swift on ESP32-C6!")

  var ledValue: Bool = false
  let blinkDelayMs: UInt32 = 500
  let led = Gpio(gpioNum: GPIO_NUM_8)
  ESP_ERROR_CHECK(led.setOutput())

  while true {
    log.d("LED is now \(ledValue ? "ON" : "OFF")")
    ESP_ERROR_CHECK(led.set(level: ledValue))
    ledValue.toggle()  // Toggle the boolean value
    vTaskDelay(.init(ms: blinkDelayMs))
  }
}
