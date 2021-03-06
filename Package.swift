// swift-tools-version:5.5
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "ios-here-navigate-edition-sdk-package",
    products: [
        // Products define the executables and libraries a package produces, and make them visible to other packages.
        .library(
            name: "ios-here-navigate-edition-sdk-package",
            targets: ["ios-here-navigate-edition-sdk-package"]),
    ],
    dependencies: [
        // Dependencies declare other packages that this package depends on.
        // .package(url: /* package url */, from: "1.0.0"),
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages this package depends on.
        .target(
            name: "ios-here-navigate-edition-sdk-package",
            dependencies: ["heresdk"]),
        .binaryTarget(
            name: "heresdk",
            url: "https://github.com/mikle94/ios-here-navigate-edition-sdk-package/releases/download/1.0.0/heresdk-navigate-ios-4.10.4.0.7956.zip",
            checksum: "c564a2456cf4f3bfab20938ff4a07b767593aead1c69a4034d0ac3bc3ca2bfdb"
        ),
        .testTarget(
            name: "ios-here-navigate-edition-sdk-packageTests",
            dependencies: ["ios-here-navigate-edition-sdk-package"]),
    ]
)
