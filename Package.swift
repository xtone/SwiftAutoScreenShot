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
            url: "https://github.com/xtone/SwiftAutoScreenShot/releases/download/2023_0330_ver0.10033/SwiftAutoScreenShot.xcframework.zip",
            checksum: "eff58071ad4da8939c63cb301e458ed41bafe83c541ea724472ea2c46da07179"
        )
    ]
)
