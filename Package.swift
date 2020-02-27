// swift-tools-version:5.0
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "StringFormatting",
    platforms: [
        .iOS(.v10),
        .watchOS(.v4),
        .tvOS(.v10),
        .macOS(.v10_14)
    ],
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
