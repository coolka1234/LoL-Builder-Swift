//
//  ProBuildViewModel.swift
//  LoL Builder
//
//  Created by Coolka on 28/11/2024.
//


import Foundation

class ProBuildViewModel: ObservableObject {
    @Published var proBuild: SingleProBuild = SingleProBuild(
        playerName: "Faker",
        playerImageUrl: "https://via.placeholder.com/150",
        items: [
            "https://via.placeholder.com/50",
            "https://via.placeholder.com/50",
            "",
            "https://via.placeholder.com/50",
            "",
            "https://via.placeholder.com/50"
        ]
    )
}
