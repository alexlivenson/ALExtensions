// swift-tools-version: 5.9
import PackageDescription

let package = Package(
    name: "ALExtensions",
    platforms: [
        .iOS(.v13),
        .macOS(.v10_15)
    ],
    products: [
        .library(
            name: "ALExtensions",
            targets: ["ALExtensions"]
        )
    ],
    dependencies: [],
    targets: [
        .target(
            name: "ALExtensions",
            dependencies: [],
            path: "ALExtensions"
        ),
        .testTarget(
            name: "ALExtensionsTests",
            dependencies: ["ALExtensions"],
            path: "ALExtensionsTests"
        )
    ]
)
