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
        playerImageUrl: "probuild_1",
        items: [
            "item1",
            "item2",
            "blank",
            "item3",
            "blank",
            "item4"
        ]
    )
    
    
}
