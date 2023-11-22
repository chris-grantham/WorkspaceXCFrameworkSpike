// swift-tools-version: 5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "FrameworkA-Package",
    products: [
        .library(
            name: "FrameworkA-Package",
            targets: ["FrameworkA-Binary"]
		),
    ],
    targets: [
        .binaryTarget(
            name: "FrameworkA-Binary",
			path: "../../DerivedData/Frameworks/FrameworkA.xcframework"
		),
    ]
)
