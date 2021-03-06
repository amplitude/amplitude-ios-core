// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "amplitude-ios-core",
    platforms: [
        .iOS(.v10),
        .macOS(.v10_10),
        .tvOS(.v9),
        .watchOS(.v3)
    ],
    products: [
        // Products define the executables and libraries a package produces, and make them visible to other packages.
        .library(
            name: "AmplitudeCore",
            targets: ["AmplitudeCore"]
        ),
    ],
    dependencies: [
        // Dependencies declare other packages that this package depends on.
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        .target(
            name: "AmplitudeCore",
            path: "Sources/AmplitudeCore",
            exclude: ["Info.plist"]),
        .testTarget(
            name: "AmplitudeCoreTests",
            dependencies: ["AmplitudeCore"],
            path: "Tests/AmplitudeCoreTests",
            exclude: ["Info.plist"]),
    ]
)
