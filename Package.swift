// swift-tools-version:5.3
import PackageDescription

let package = Package(
    name: "TreeSitterApacheconf",
    products: [
        .library(name: "TreeSitterApacheconf", targets: ["TreeSitterApacheconf"]),
    ],
    targets: [
        .target(
            name: "TreeSitterApacheconf",
            dependencies: [],
            path: ".",
            sources: [
                "src/parser.c",
            ],
            resources: [
                .copy("queries")
            ],
            publicHeadersPath: "bindings/swift/TreeSitterApacheconf",
            cSettings: [.headerSearchPath("src")]
        )
    ],
    cLanguageStandard: .c11
)
