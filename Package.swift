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
            url: "https://github.com/wendyliga/compiled-framework-spm/releases/download/0.0.1/Logging.xcframework.zip",
            checksum: "fd90fb5c2d0b810940427b27a6a674edf926ee3a2fa9787aadc771af05fcea37"
        ),
        .testTarget(
            name: "ios-here-navigate-edition-sdk-packageTests",
            dependencies: ["ios-here-navigate-edition-sdk-package"]),
    ]
)
