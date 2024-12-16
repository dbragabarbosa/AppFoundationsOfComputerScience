// Package.swift
import PackageDescription

let package = Package(
    name: "AppFoundationsOfComputerScience",
    platforms: [
        .iOS(.v13)
    ],
    dependencies: [
        // Adicione dependências aqui, se necessário.
    ],
    targets: [
        .target(
            name: "AppFoundationsOfComputerScience",
            dependencies: []),
        .testTarget(
            name: "AppFoundationsOfComputerScienceTests",
    ]
)
