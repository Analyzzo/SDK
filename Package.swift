// swift-tools-version: 5.7
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "AnalyzzoSDK",
    platforms: [
        .iOS(.v14)
    ],
    products: [
        // Products define the executables and libraries a package produces, and make them visible to other packages.
        .library(
            name: "AnalyzzoSDK",
            targets: ["AnalyzzoSDK"]),
    ],

    dependencies: [
        .package(
            url: "https://github.com/AppsFlyerSDK/AppsFlyerFramework.git", from: "6.9.0"),
        .package(
            url: "https://github.com/facebook/facebook-ios-sdk.git", branch: "main"),
        .package(
            url: "https://github.com/saoudrizwan/Disk",  branch: "master"),
        .package(
            url: "https://github.com/OneSignal/OneSignal-iOS-SDK",  branch: "main"),
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages this package depends on.
        .target(
            name: "AnalyzzoSDK",
            dependencies: [
                .target(name: "Analyzzo"),

                .target(name: "CleverTapSDK"),
                .target(name: "Leanplum"),
                .target(name: "SDWebImage"),
                
                .product(name: "OneSignalFramework", package: "OneSignal-iOS-SDK"),
                .product(name: "OneSignalInAppMessages", package: "OneSignal-iOS-SDK"),
                .product(name: "OneSignalLocation", package: "OneSignal-iOS-SDK"),
                .product(name: "OneSignalExtension", package: "OneSignal-iOS-SDK"),

                .product(name: "AppsFlyerLib", package: "AppsFlyerFramework"),
                .product(name: "FacebookCore", package: "facebook-ios-sdk"),
                .product(name: "Disk", package: "Disk"),
                
            ],
            resources: [] ),
        
        .binaryTarget(
            name: "Analyzzo",
            path: "./Sources/Analyzzo.xcframework"),

         .binaryTarget(
            name: "CleverTapSDK",
            path: "./Sources/CleverTapSDK.xcframework"),

         .binaryTarget(
            name: "Leanplum",
            path: "./Sources/Leanplum.xcframework"),
            
         .binaryTarget(
            name: "SDWebImage",
            path: "./Sources/SDWebImage.xcframework"),
    ]
)
