// swift-tools-version:4.0
import PackageDescription

let package = Package(
    name: "FluentSQLite",
    products: [
        .library(name: "FluentSQLite", targets: ["FluentSQLite"]),
    ],
    dependencies: [
        // 🌎 Utility package containing tools for byte manipulation, Codable, OS APIs, and debugging.
//      .package(url: "https://github.com/vapor/core.git", from: "3.0.0"),
        .package(url: "https://github.com/mixio/core.git", .branch("mixio-dev")),

        // ✳️ Swift ORM framework (queries, models, and relations) for building NoSQL and SQL database integrations.
//      .package(url: "https://github.com/vapor/fluent.git", from: "3.0.0"),
        .package(url: "https://github.com/mixio/fluent.git", .branch("mixio-dev")),

        // 📦 Dependency injection / inversion of control framework.
        .package(url: "https://github.com/vapor/service.git", from: "1.0.0"),

        // 🔵 SQLite 3 wrapper for Swift
//      .package(url: "https://github.com/vapor/sqlite.git", from: "3.0.0"),
        .package(url: "https://github.com/mixio/sqlite.git", .branch("mixio-dev")),
    ],
    targets: [
        .target(name: "FluentSQLite", dependencies: ["Async", "FluentSQL", "Service", "SQLite"]),
        .testTarget(name: "FluentSQLiteTests", dependencies: ["FluentBenchmark", "FluentSQLite", "SQLite"]),
    ]
)
