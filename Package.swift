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
            url: "https://github.com/xtone/SwiftAutoScreenShot/releases/download/2023_0704_ver0.10091/SwiftAutoScreenShot.xcframework.zip",
            checksum: "d71661293b34cbdcf45101d777a3c0168f318f4460ab4a6268ada89e0385fb02"
        )
    ]
)
