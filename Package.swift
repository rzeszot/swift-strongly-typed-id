// swift-tools-version:5.5

import PackageDescription

let package = Package(
  name: "StronglyTypedId",
  products: [
    .library(name: "StronglyTypedId", targets: ["StronglyTypedId"])
  ],
  targets: [
    .target(name: "StronglyTypedId"),
    .testTarget(name: "StronglyTypedIdTests", dependencies: ["StronglyTypedId"])
  ]
)
