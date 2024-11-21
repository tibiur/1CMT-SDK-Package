// swift-tools-version: 5.7
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "1CMT",
    platforms: [
        .iOS(.v14)
    ],
    products: [
        .library(name: "1CMT",
                 targets: [
                    "TrueMotionSensorEngine",
                    "SensorFlowInterface",
                    "MapMatch",
                    "CMTUtils",
                 ]),
    ],
    dependencies: [],
    targets: [
        .binaryTarget(
            name: "CMTUtils",
            url: "https://artifactory.cmtelematics.com/artifactory/ios-swiftpm-development/CMTUtils/CMTUtils-999.999.999-INTERNAL-4997.zip",
            checksum: "d30173836e9b985d65e330fd35fcb91d247e1c32b68fbd1a9b8f7743d885fca4"
        ),
        .binaryTarget(
            name: "SensorFlowInterface",
            url: "https://artifactory.cmtelematics.com/artifactory/ios-swiftpm-external/SensorFlowInterface/SensorFlowInterface-0.2.1.zip",
            checksum: "6936e3b1bb75528be7e5c1bc8143ce5ea7d709b1db8adfe424ad18f61d4040b9"
        ),
        .binaryTarget(
            name: "TrueMotionSensorEngine",
            url: "https://artifactory.cmtelematics.com/artifactory/ios-swiftpm-development/TrueMotionSensorEngine/TrueMotionSensorEngine-999.999.999-INTERNAL-4997.zip",
            checksum: "3da5ee8a75e5d6f77abdf01527202d1c7044d5396f0c87f3c6c3baef3deafdc0"
        ),
        .binaryTarget(
            name: "MapMatch",
            url: "https://artifactory.cmtelematics.com/artifactory/ios-swiftpm-external/MapMatch/MapMatch-0.0.5.zip",
            checksum: "69293002a1d490110dc57985830e0023b67095e669763913a47d6f8906d382a0"
        ),
    ]
)
