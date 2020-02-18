// swift-tools-version:5.1
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "StringFormatting",
    products: [
        .library(
            name: "StringFormatting",
            targets: ["StringFormatting"]),
    ],
    dependencies: [],
    targets: [
        .target(
            name: "StringFormatting",
            dependencies: []),
        .testTarget(
            name: "StringFormattingTests",
            dependencies: ["StringFormatting"]),
    ]
)
