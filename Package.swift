// swift-tools-version: 5.10
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "extobjc",
    platforms: [.watchOS(.v4), .iOS(.v12), .macOS(.v10_13), .tvOS(.v12), .macCatalyst(.v13)],
    products: [
        // Products define the executables and libraries a package produces, making them visible to other packages.
        .library(
            name: "extobjc",
            targets: ["extobjc"]
        ),
    ],
    targets: [
        // Targets are the basic building blocks of a package, defining a module or a test suite.
        // Targets can depend on other targets in this package and products from dependencies.
        .target(
            name: "extobjc",
            path: "extobjc"
        ),
        .testTarget(
            name: "extobjcTests",
            dependencies: ["extobjc"],
            path: "Tests",
            cSettings: [
                .define("EXT_UNIT_TEST"),
                .define("NDEBUG"),
            ]
        ),
    ],
    cLanguageStandard: .gnu99
)
