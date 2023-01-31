// swift-tools-version: 5.7
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "SwiftAutoScreenShot",
    platforms: [
        .iOS(.v13)
    ],
    products: [
        // Products define the executables and libraries a package produces, and make them visible to other packages.
        .library(
            name: "SwiftAutoScreenShot",
            targets: ["SwiftAutoScreenShot"])
    ],
    dependencies: [
        // Dependencies declare other packages that this package depends on.
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages this package depends on.
        .binaryTarget(
            name: "SwiftAutoScreenShot",
            url: "https://github.com/xtone/SwiftAutoScreenShot/releases/download/2023__0131_ver0.02/SwiftAutoScreenShot.xcframework.zip",
            checksum: "bbd9efb6b45609272d6895c45c9d2bf1a529207322991332589d07640488de2c"
        )
    ]
)
