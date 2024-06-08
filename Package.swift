// swift-tools-version: 5.10
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "NewsCore",
    platforms: [.iOS(.v14)],
    products: [
        // Products define the executables and libraries a package produces, making them visible to other packages.
        .library(
            name: "NewsCore",
            targets: ["NewsCore"]),
    ],
    dependencies: [
           .package(url: "https://github.com/rania-ramadan011/CommonUtilities.git", from: "1.0.0")
       ],
    targets: [
        // Targets are the basic building blocks of a package, defining a module or a test suite.
        // Targets can depend on other targets in this package and products from dependencies.
        .target(
            name: "NewsCore",
            dependencies: ["CommonUtilities"]),
        .testTarget(
            name: "NewsCoreTests",
            dependencies: ["NewsCore"]),
    ]
)
