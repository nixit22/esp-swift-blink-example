# Register the app as an IDF component
idf_component_register(
    SRCS 
        Main.swift

    PRIV_INCLUDE_DIRS "."
    REQUIRES SwiftPlatform SwiftGPIO
)

swift_configure_component()

