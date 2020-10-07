// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "Mew",
    products: [
        .library(
            name: "Mew",
            targets: ["Mew"]),
    ],
    targets: [
        .target(
            name: "Mew",
            dependencies: []),
        .testTarget(
            name: "MewTests",
            dependencies: ["Mew"]),
    ]
)
