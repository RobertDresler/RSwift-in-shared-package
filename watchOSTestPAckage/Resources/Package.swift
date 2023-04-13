// swift-tools-version: 5.7
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "Resources",
    defaultLocalization: "en",
    platforms: [.iOS(.v15), .watchOS(.v8)],
    products: [
        .library(
            name: "Strings",
            targets: ["Strings"]
        )
    ],
    dependencies: [
        .package(url: "https://github.com/mac-cain13/R.swift.git", .upToNextMajor(from: "7.0.0"))
    ],
    targets: [
        .target(
            name: "Strings",
            dependencies: [.product(name: "RswiftLibrary", package: "R.swift")],
            resources: [.process("Resources")],
            plugins: [.plugin(name: "RswiftGeneratePublicResources", package: "R.swift")]
        )
    ]
)
