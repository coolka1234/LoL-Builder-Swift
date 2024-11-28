//
//  ChampionListViewModel.swift
//  LoL Builder
//
//  Created by Coolka on 28/11/2024.
//


import Foundation

class ChampionListViewModel: ObservableObject {
    @Published var champions: [Champion] = [
        Champion(name: "Ahri", imageUrl: "https://via.placeholder.com/50"),
        Champion(name: "Garen", imageUrl: "https://via.placeholder.com/50"),
        Champion(name: "Ezreal", imageUrl: "https://via.placeholder.com/50"),
        Champion(name: "Darius", imageUrl: "https://via.placeholder.com/50"),
        Champion(name: "Yasuo", imageUrl: "https://via.placeholder.com/50"),
        Champion(name: "Jinx", imageUrl: "https://via.placeholder.com/50"),
    ]
}
