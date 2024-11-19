//
//  HomeViewModel.swift
//  LoL Builder
//
//  Created by Coolka on 19/11/2024.
//

import Foundation

class HomeViewModel: ObservableObject {
    @Published var accountName: String = "Summoner123"
    @Published var champions: [Champion] = []
    @Published var proBuilds: [ProBuild] = []
    
    init() {
        loadChampions()
        loadProBuilds()
    }
    
    func loadChampions() {
        champions = [
            Champion(name: "Ahri", imageUrl: "https://via.placeholder.com/50"),
            Champion(name: "Yasuo", imageUrl: "https://via.placeholder.com/50"),
            Champion(name: "Lux", imageUrl: "https://via.placeholder.com/50")
        ]
    }
    
    func loadProBuilds() {
        proBuilds = [
            ProBuild(title: "Ahri Mid Build", description: "AP Assassin", imageUrl: "https://via.placeholder.com/100"),
            ProBuild(title: "Yasuo Top Build", description: "AD Fighter", imageUrl: "https://via.placeholder.com/100"),
            ProBuild(title: "Lux Support Build", description: "AP Utility", imageUrl: "https://via.placeholder.com/100")
        ]
    }
}
