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
            url: "https://github.com/yattee/MPVKit/releases/download/1.0.1/Libmpv-GPL.xcframework.zip",
            checksum: "3694d99ec91855b3322cabb188630a9cce1a39c91034c34e4cf15f22a1c6101c"
        ),
        .binaryTarget(
            name: "Libavcodec-GPL",
            url: "https://github.com/yattee/MPVKit/releases/download/1.0.1/Libavcodec-GPL.xcframework.zip",
            checksum: "3fbe095e42e6b1dc1f8a520f98043162619fbf704947f6269819c616613f24c2"
        ),
        .binaryTarget(
            name: "Libavdevice-GPL",
            url: "https://github.com/yattee/MPVKit/releases/download/1.0.1/Libavdevice-GPL.xcframework.zip",
            checksum: "f49c116080a4930e2d06cabf4740b7f4e45b36496e98dc4d9607c9f44eab9902"
        ),
        .binaryTarget(
            name: "Libavformat-GPL",
            url: "https://github.com/yattee/MPVKit/releases/download/1.0.1/Libavformat-GPL.xcframework.zip",
            checksum: "3e7648c17326e45b13680cc5d914d39227daaaa56abf488479fc8835647d8fc2"
        ),
        .binaryTarget(
            name: "Libavfilter-GPL",
            url: "https://github.com/yattee/MPVKit/releases/download/1.0.1/Libavfilter-GPL.xcframework.zip",
            checksum: "407985c6bd25e8345921b0d12e74891644db113246941b84ee6851cfe7360ece"
        ),
        .binaryTarget(
            name: "Libavutil-GPL",
            url: "https://github.com/yattee/MPVKit/releases/download/1.0.1/Libavutil-GPL.xcframework.zip",
            checksum: "918d05d8a1a01674b5f9cc079929cc8968e520b0d0d3b2b27c25e434db6b658c"
        ),
        .binaryTarget(
            name: "Libswresample-GPL",
            url: "https://github.com/yattee/MPVKit/releases/download/1.0.1/Libswresample-GPL.xcframework.zip",
            checksum: "2e2019d74bf754d44010cb90680b5ad2479ed7bf71335a3749b9aba6ad81b898"
        ),
        .binaryTarget(
            name: "Libswscale-GPL",
            url: "https://github.com/yattee/MPVKit/releases/download/1.0.1/Libswscale-GPL.xcframework.zip",
            checksum: "2e56f3c468cc46317942e8ff58694021c7be47b9b63b54545df577b298b00cc9"
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
            url: "https://github.com/yattee/MPVKit/releases/download/1.0.1/Libavcodec.xcframework.zip",
            checksum: "6e9640708f448fe059dd41ff49a8d758a62c27fb0bd8c4d9c22dd9bb9b766f9d"
        ),
        .binaryTarget(
            name: "Libavdevice",
            url: "https://github.com/yattee/MPVKit/releases/download/1.0.1/Libavdevice.xcframework.zip",
            checksum: "03deb5c9f570a079551ce331985f48906c876437067684e280dee22e197268d3"
        ),
        .binaryTarget(
            name: "Libavformat",
            url: "https://github.com/yattee/MPVKit/releases/download/1.0.1/Libavformat.xcframework.zip",
            checksum: "3ada6d47a6f108139648676b1a36ee292435bc44a69340ebc78f382c72dc748e"
        ),
        .binaryTarget(
            name: "Libavfilter",
            url: "https://github.com/yattee/MPVKit/releases/download/1.0.1/Libavfilter.xcframework.zip",
            checksum: "84ad60e3bb35a49cc16e1f6edd1d9a097e01b176189d4c1b18dd0e1e774c8004"
        ),
        .binaryTarget(
            name: "Libavutil",
            url: "https://github.com/yattee/MPVKit/releases/download/1.0.1/Libavutil.xcframework.zip",
            checksum: "c6e3c164a76ba2ed046d896fc04eae96e81a5c46aae9578a11fd503e89c24c27"
        ),
        .binaryTarget(
            name: "Libswresample",
            url: "https://github.com/yattee/MPVKit/releases/download/1.0.1/Libswresample.xcframework.zip",
            checksum: "bb721be9a6a3dd9c40bba8fc7975c06d3f545231e43cdb51ad28b4d6ff10758b"
        ),
        .binaryTarget(
            name: "Libswscale",
            url: "https://github.com/yattee/MPVKit/releases/download/1.0.1/Libswscale.xcframework.zip",
            checksum: "530af911d5ccc62f16a2e9ad3e1db87f0fa7873e4560df528f795eac4b2820da"
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
            url: "https://github.com/yattee/MPVKit/releases/download/1.0.1/Libmpv.xcframework.zip",
            checksum: "92f6eb5b2555cb037a4e3c25f2894c28ee921177c8acc43bc227459e579e06f6"
        ),
        //AUTO_GENERATE_TARGETS_END//
    ]
)
