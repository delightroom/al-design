// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "ALDesign",
    platforms: [.iOS(.v13)],
    products: [
        .library(
            name: "ALDesign",
            targets: ["ALDesign"]),
    ],
    targets: [
        .target(
            name: "ALDesign",
            dependencies: [],
            resources: [.process("Resources")]),
        .testTarget(
            name: "ALDesignTests",
            dependencies: ["ALDesign"]),
//            resources: [.process("Resources")]),
    ]
)
