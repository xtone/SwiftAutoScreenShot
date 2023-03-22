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
            url: "https://github.com/xtone/SwiftAutoScreenShot/releases/download/2023_0322_ver0.10015/SwiftAutoScreenShot.xcframework.zip",
            checksum: "4da3eaa8fac82c665d66161e11fcd40c929e2b16ead2aa928b5b364c3f7336f6"
        )
    ]
)
