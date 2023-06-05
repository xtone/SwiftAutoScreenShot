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
            url: "https://github.com/xtone/SwiftAutoScreenShot/releases/download/2023_0605_ver0.10086/SwiftAutoScreenShot.xcframework.zip",
            checksum: "c132bf6d220ab7c5f38a676cb841526f6927cf80f913c3138d9d7b91e30c2cb4"
        )
    ]
)
