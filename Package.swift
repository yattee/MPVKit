// swift-tools-version:5.9

import PackageDescription

let package = Package(
    name: "MPVKit",
    platforms: [.macOS(.v12), .iOS(.v15), .tvOS(.v15), .visionOS(.v1)],
    products: [
        .library(
            name: "MPVKit",
            targets: ["_MPVKit"]
        ),
        .library(
            name: "MPVKit-GPL",
            targets: ["_MPVKit-GPL"]
        ),
    ],
    targets: [
        .target(
            name: "_MPVKit",
            dependencies: [
                "Libmpv", "_FFmpeg", "Libuchardet", "Libbluray",
                .target(name: "Libluajit", condition: .when(platforms: [.macOS])),
            ],
            path: "Sources/_MPVKit",
            linkerSettings: [
                .linkedFramework("AVFoundation"),
                .linkedFramework("CoreAudio"),
            ]
        ),
        .target(
            name: "_FFmpeg",
            dependencies: [
                "Libavcodec", "Libavdevice", "Libavfilter", "Libavformat", "Libavutil", "Libswresample", "Libswscale",
                "Libssl", "Libcrypto", "Libass", "Libfreetype", "Libfribidi", "Libharfbuzz",
                "MoltenVK", "Libshaderc_combined", "lcms2", "Libplacebo", "Libdovi", "Libunibreak",
                "gmp", "nettle", "hogweed", "gnutls", "Libdav1d", "Libuavs3d"
            ],
            path: "Sources/_FFmpeg",
            linkerSettings: [
                .linkedFramework("AudioToolbox"),
                .linkedFramework("CoreVideo"),
                .linkedFramework("CoreFoundation"),
                .linkedFramework("CoreMedia"),
                .linkedFramework("Metal"),
                .linkedFramework("VideoToolbox"),
                .linkedLibrary("bz2"),
                .linkedLibrary("iconv"),
                .linkedLibrary("expat"),
                .linkedLibrary("resolv"),
                .linkedLibrary("xml2"),
                .linkedLibrary("z"),
                .linkedLibrary("c++"),
            ]
        ),
        .target(
            name: "_MPVKit-GPL",
            dependencies: [
                "Libmpv-GPL", "_FFmpeg-GPL", "Libuchardet", "Libbluray",
                .target(name: "Libluajit", condition: .when(platforms: [.macOS])),
            ],
            path: "Sources/_MPVKit-GPL",
            linkerSettings: [
                .linkedFramework("AVFoundation"),
                .linkedFramework("CoreAudio"),
            ]
        ),
        .target(
            name: "_FFmpeg-GPL",
            dependencies: [
                "Libavcodec-GPL", "Libavdevice-GPL", "Libavfilter-GPL", "Libavformat-GPL", "Libavutil-GPL", "Libswresample-GPL", "Libswscale-GPL",
                "Libssl", "Libcrypto", "Libass", "Libfreetype", "Libfribidi", "Libharfbuzz",
                "MoltenVK", "Libshaderc_combined", "lcms2", "Libplacebo", "Libdovi", "Libunibreak",
                "Libsmbclient", "gmp", "nettle", "hogweed", "gnutls", "Libdav1d", "Libuavs3d"
            ],
            path: "Sources/_FFmpeg-GPL",
            linkerSettings: [
                .linkedFramework("AudioToolbox"),
                .linkedFramework("CoreVideo"),
                .linkedFramework("CoreFoundation"),
                .linkedFramework("CoreMedia"),
                .linkedFramework("Metal"),
                .linkedFramework("VideoToolbox"),
                .linkedLibrary("bz2"),
                .linkedLibrary("iconv"),
                .linkedLibrary("expat"),
                .linkedLibrary("resolv"),
                .linkedLibrary("xml2"),
                .linkedLibrary("z"),
                .linkedLibrary("c++"),
            ]
        ),

        .binaryTarget(
            name: "Libmpv-GPL",
            url: "https://github.com/yattee/MPVKit/releases/download/1.0.2/Libmpv-GPL.xcframework.zip",
            checksum: "d2899bb5dfd083550053a33a0cf0fe58b2402fe222bfce808372be38d2ea80aa"
        ),
        .binaryTarget(
            name: "Libavcodec-GPL",
            url: "https://github.com/yattee/MPVKit/releases/download/1.0.2/Libavcodec-GPL.xcframework.zip",
            checksum: "3fc4133f74ec5023e4bc75c0eb91b3805bedc3705d1263ad2d00e1e0bcc37f96"
        ),
        .binaryTarget(
            name: "Libavdevice-GPL",
            url: "https://github.com/yattee/MPVKit/releases/download/1.0.2/Libavdevice-GPL.xcframework.zip",
            checksum: "173bc0c5000af763a402e3c42f6a52c35ca990a7c69a0d7a2bb8b7c637422fff"
        ),
        .binaryTarget(
            name: "Libavformat-GPL",
            url: "https://github.com/yattee/MPVKit/releases/download/1.0.2/Libavformat-GPL.xcframework.zip",
            checksum: "6d857da7c2ee01321897e9ec6f0c17239eba5c852bfd436aec58a7c4c00a749e"
        ),
        .binaryTarget(
            name: "Libavfilter-GPL",
            url: "https://github.com/yattee/MPVKit/releases/download/1.0.2/Libavfilter-GPL.xcframework.zip",
            checksum: "24a6fb5666a16cde378dd641d426ea9268570950bb7e4010a75a78deaecf1bf1"
        ),
        .binaryTarget(
            name: "Libavutil-GPL",
            url: "https://github.com/yattee/MPVKit/releases/download/1.0.2/Libavutil-GPL.xcframework.zip",
            checksum: "13226270d4b5263926b405c6a4a42bef1a240743fa51864cafc770f5287e79c9"
        ),
        .binaryTarget(
            name: "Libswresample-GPL",
            url: "https://github.com/yattee/MPVKit/releases/download/1.0.2/Libswresample-GPL.xcframework.zip",
            checksum: "2c623310cdbe241dae9963c0a420bcf01bd490a5d8f4cdbe41897caef3d14cf1"
        ),
        .binaryTarget(
            name: "Libswscale-GPL",
            url: "https://github.com/yattee/MPVKit/releases/download/1.0.2/Libswscale-GPL.xcframework.zip",
            checksum: "daa97d9ab500b840676e9af31ffb260dad479e3700460b6aaf05129437d9088e"
        ),
        //AUTO_GENERATE_TARGETS_BEGIN//

        .binaryTarget(
            name: "Libcrypto",
            url: "https://github.com/mpvkit/openssl-build/releases/download/3.3.5/Libcrypto.xcframework.zip",
            checksum: "593283be2a90f7fd66f6e6ed331b2f099cf403e0926fe3b4ac09a7062b793965"
        ),
        .binaryTarget(
            name: "Libssl",
            url: "https://github.com/mpvkit/openssl-build/releases/download/3.3.5/Libssl.xcframework.zip",
            checksum: "ff5ffd43d015d7285fd37e4a3145b25cbd8d2842740bd629a711c299a20e226a"
        ),

        .binaryTarget(
            name: "gmp",
            url: "https://github.com/mpvkit/gnutls-build/releases/download/3.8.11/gmp.xcframework.zip",
            checksum: "ad33c7a08f4cdcb9924c8f0e6d9a054dad33d7794b97667bf8b6fb2b236ae585"
        ),

        .binaryTarget(
            name: "nettle",
            url: "https://github.com/mpvkit/gnutls-build/releases/download/3.8.11/nettle.xcframework.zip",
            checksum: "0fdf3ebf8bd7b8bc8eee837cf27261cb4c52ae520b6576a2f468656aa1691e02"
        ),
        .binaryTarget(
            name: "hogweed",
            url: "https://github.com/mpvkit/gnutls-build/releases/download/3.8.11/hogweed.xcframework.zip",
            checksum: "25727c9fa67287fa0a4f4722f88bb8be669b23cd7e837e2d00870eb8a25d3f27"
        ),

        .binaryTarget(
            name: "gnutls",
            url: "https://github.com/mpvkit/gnutls-build/releases/download/3.8.11/gnutls.xcframework.zip",
            checksum: "3dbec5809339189bf9679e218c6cff387ebf8fb72745927835afc2678f5c9f4d"
        ),

        .binaryTarget(
            name: "Libunibreak",
            url: "https://github.com/mpvkit/libass-build/releases/download/0.17.5/Libunibreak.xcframework.zip",
            checksum: "940d9833cf4477d0a260d9f2b4066125bc0ff7bbc111ac3c90e774765b77a559"
        ),

        .binaryTarget(
            name: "Libfreetype",
            url: "https://github.com/mpvkit/libass-build/releases/download/0.17.5/Libfreetype.xcframework.zip",
            checksum: "496ca62488530e14b1e4624d20ee2b237c0bd675cd70c19da578a5768302d02d"
        ),

        .binaryTarget(
            name: "Libfribidi",
            url: "https://github.com/mpvkit/libass-build/releases/download/0.17.5/Libfribidi.xcframework.zip",
            checksum: "bc15e097b892f2f90424e4a27ba287070cc2f98a74a4da10e6d2481d15cf5ff9"
        ),

        .binaryTarget(
            name: "Libharfbuzz",
            url: "https://github.com/mpvkit/libass-build/releases/download/0.17.5/Libharfbuzz.xcframework.zip",
            checksum: "aa8e0b9ca0387dac74e3e93c86e34d11982bb013b28022d0e6966a8427a35b2e"
        ),

        .binaryTarget(
            name: "Libass",
            url: "https://github.com/mpvkit/libass-build/releases/download/0.17.5/Libass.xcframework.zip",
            checksum: "3f4c576d2818ceb4544aa2a20e1f55846511c5e706fd19adc3ea9fd842270498"
        ),

        .binaryTarget(
            name: "Libsmbclient",
            url: "https://github.com/mpvkit/libsmbclient-build/releases/download/4.15.13-2512/Libsmbclient.xcframework.zip",
            checksum: "3a53375fab11bc888cc553664ea5dd902208d04f0cc21ec746302bf356246b6f"
        ),

        .binaryTarget(
            name: "Libbluray",
            url: "https://github.com/mpvkit/libbluray-build/releases/download/1.4.0/Libbluray.xcframework.zip",
            checksum: "bc037d34e2b0b5ab7f202fb371f5fb298136cc66fdf406c2172185d06f53f18d"
        ),

        .binaryTarget(
            name: "Libuavs3d",
            url: "https://github.com/mpvkit/libuavs3d-build/releases/download/1.2.1-fix/Libuavs3d.xcframework.zip",
            checksum: "bd5256081486d16c51c868d755bf70266c424b54c895269580de44ec6707f789"
        ),

        .binaryTarget(
            name: "Libdovi",
            url: "https://github.com/mpvkit/libdovi-build/releases/download/3.3.2/Libdovi.xcframework.zip",
            checksum: "e693e239808350868e79c5448ef9f02e2716bc822dd8632a41a368a1eae5ca7d"
        ),

        .binaryTarget(
            name: "MoltenVK",
            url: "https://github.com/mpvkit/moltenvk-build/releases/download/1.4.2/MoltenVK.xcframework.zip",
            checksum: "aee189c54ad7c62bf734a3dc51eb4cfad5685d1d63b0ec519ecd1b437c332418"
        ),

        .binaryTarget(
            name: "Libshaderc_combined",
            url: "https://github.com/mpvkit/libshaderc-build/releases/download/2025.5.0/Libshaderc_combined.xcframework.zip",
            checksum: "758047b615708575b580eb960a2d083f760a29dc462d6eaa360416c946ce433b"
        ),

        .binaryTarget(
            name: "lcms2",
            url: "https://github.com/mpvkit/lcms2-build/releases/download/2.17.0/lcms2.xcframework.zip",
            checksum: "dc0dce0606f6ab6841a8ec5a6bd4448e2f3ef00661a050460f806c9393dc6982"
        ),

        .binaryTarget(
            name: "Libplacebo",
            url: "https://github.com/mpvkit/libplacebo-build/releases/download/7.360.1/Libplacebo.xcframework.zip",
            checksum: "2fa3d54cb81f302d6f11c7b2f509af30944381c3b11ee9d35096eb4637a6e2dd"
        ),

        .binaryTarget(
            name: "Libdav1d",
            url: "https://github.com/mpvkit/libdav1d-build/releases/download/1.5.3/Libdav1d.xcframework.zip",
            checksum: "d1a32ae6a1f0193e9f05c44c9176844af7f6d2a58cb33843f6f1b8dfd9224083"
        ),

        .binaryTarget(
            name: "Libavcodec",
            url: "https://github.com/yattee/MPVKit/releases/download/1.0.2/Libavcodec.xcframework.zip",
            checksum: "dc8f90d3ac3b9753a24b631b5556236214a77ce91db7ef1eb0383ccff6d99fef"
        ),
        .binaryTarget(
            name: "Libavdevice",
            url: "https://github.com/yattee/MPVKit/releases/download/1.0.2/Libavdevice.xcframework.zip",
            checksum: "66efd9b4d51f6cf7865f1daee494de5a2252f3cfeac58dee6939c827c5ac61e9"
        ),
        .binaryTarget(
            name: "Libavformat",
            url: "https://github.com/yattee/MPVKit/releases/download/1.0.2/Libavformat.xcframework.zip",
            checksum: "251966c14ff385939e69378e7caac0b5b11fd1390849944f7fc59cf722868d2e"
        ),
        .binaryTarget(
            name: "Libavfilter",
            url: "https://github.com/yattee/MPVKit/releases/download/1.0.2/Libavfilter.xcframework.zip",
            checksum: "848777f2c63440c38987e44586f35c40b6210579dbe642971d25b80ae95c4afc"
        ),
        .binaryTarget(
            name: "Libavutil",
            url: "https://github.com/yattee/MPVKit/releases/download/1.0.2/Libavutil.xcframework.zip",
            checksum: "4abd4dd61ee71839eaa5838a05c9729518ae879fae921fc31d410b77ca002073"
        ),
        .binaryTarget(
            name: "Libswresample",
            url: "https://github.com/yattee/MPVKit/releases/download/1.0.2/Libswresample.xcframework.zip",
            checksum: "ce54696eb66f9519f4fc4bb08bdad4bd7f4b59c36144889ca27ce4288193a41e"
        ),
        .binaryTarget(
            name: "Libswscale",
            url: "https://github.com/yattee/MPVKit/releases/download/1.0.2/Libswscale.xcframework.zip",
            checksum: "5886c308de901809995688541988a4c7a17bbe4fab166b629b141005c77e7dc1"
        ),

        .binaryTarget(
            name: "Libuchardet",
            url: "https://github.com/mpvkit/libuchardet-build/releases/download/0.0.8/Libuchardet.xcframework.zip",
            checksum: "ea4f548a230a755e059144657cc9e2ff563c1cdeae03974c38f8b6e1a40303fb"
        ),

        .binaryTarget(
            name: "Libluajit",
            url: "https://github.com/mpvkit/libluajit-build/releases/download/2.1.0-fix/Libluajit.xcframework.zip",
            checksum: "3a171ef1627fb88260893dc452f989bd93dd8510814771ba3aff7753470d3f3e"
        ),

        .binaryTarget(
            name: "Libmpv",
            url: "https://github.com/yattee/MPVKit/releases/download/1.0.2/Libmpv.xcframework.zip",
            checksum: "30a4f002a2d5d7430bc91da7a873ab16ca7f68c33d32e93dca645f41f32087b4"
        ),
        //AUTO_GENERATE_TARGETS_END//
    ]
)
