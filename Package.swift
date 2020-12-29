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
            url: "https://www.lightstreamer.com/repo/cocoapods/ls-tvos-client/4.3.0/ls-tvos-client-4.3.0.zip", 
            checksum: "c7cbf16b2de9e327f69788ca2d5df5ee61cb9db2995b7a3c821ad1b4738ae684"
        )
    ]
)
