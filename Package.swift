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
            url: "https://www.lightstreamer.com/repo/cocoapods/ls-tvos-client/4.3.1/ls-tvos-client-4.3.1.zip", 
            checksum: "1ca3148dc6d43fc68a90c4901e8c1197d3dc923125f0c2a13d655f4c41d16303"
        )
    ]
)
