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
            url: "https://sdk.lightstreamer.com/ls-tvos-client/4.3.2/lib/ls-tvos-client-4.3.2.zip", 
            checksum: "b886c14f92e6529cf202b0b8f485037c2b398dc8976282c3ba46858ee9a74bbf"
        )
    ]
)
