// swift-tools-version:5.3
//
// Copyright (c) Lightstreamer Srl
// See LICENSE.md for license terms
//

import PackageDescription

let package = Package(
    name: "Lightstreamer_tvOS_Client",
    platforms: [
        .tvOS("9.0")
    ],
    products: [
        .library(
            name: "Lightstreamer_tvOS_Client", 
            targets: ["Lightstreamer_tvOS_Client_Wrapper"]
        )
    ],
    dependencies: [],
    targets: [
        .target(
            name: "Lightstreamer_tvOS_Client_Wrapper",
            dependencies: [
                .target(name: "Lightstreamer_tvOS_Client")
            ],
            path: "Sources",
            linkerSettings: [
                .linkedLibrary("iconv"),
                .linkedFramework("Security"),
                .linkedFramework("SystemConfiguration")
            ]
        ),
        .binaryTarget(
            name: "Lightstreamer_tvOS_Client", 
            url: "https://sdk.lightstreamer.com/ls-tvos-client/4.3.3/lib/ls-tvos-client-4.3.3.zip", 
            checksum: "66f2741b7a46bdb026edbf043b77a4436f0f3a7b6ba0934121524163cc39f6a0"
        )
    ]
)
