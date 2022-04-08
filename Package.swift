// swift-tools-version:5.5

import PackageDescription

let package = Package(
  name: "Identifier",
  products: [
    .library(name: "Identifier", targets: ["Identifier"])
  ],
  targets: [
    .target(name: "Identifier"),
    .testTarget(name: "IdentifierTests", dependencies: ["Identifier"])
  ]
)
