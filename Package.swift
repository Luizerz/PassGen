// swift-tools-version:5.5
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "Password-Generetor",
    products: [
        .library(name: "PassGen", targets: ["PassGenLibrary"])
    ],
    dependencies: [
        .package(url: "https://github.com/apple/swift-argument-parser.git" /* package url */, from: "1.0.0"),
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages this package depends on.
        .target(
            name: "PassGenLibrary",
            dependencies: [
                .product(
                    name: "ArgumentParser",
                    package: "swift-argument-parser"
                )
            ]),
        .executableTarget(
            name: "passgen",
            dependencies: [
                "PassGenLibrary"
            ],
            path: "Sources/Password-Generetor"
        ),
        .testTarget(
            name: "Password-GeneretorTests",
            dependencies: ["passgen"]),
    ]
)
