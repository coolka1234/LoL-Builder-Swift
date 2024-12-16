//
//  HomeViewModel.swift
//  LoL Builder
//
//  Created by Coolka on 19/11/2024.
//

import Foundation

class HomeViewModel: ObservableObject {
    @Published var accountName: String = "Summoner123"
    @Published var profileImageName: String = "defaultProfileIcon"
    @Published var summonerLevel: Int? = nil
    @Published var champions: [Champion] = []
    @Published var proBuilds: [ProBuild] = []
    
    init() {
        loadChampions()
        loadProBuilds()
    }
    
    func loadChampions() {
        champions = [
            Champion(name: "Ahri", imageUrl: "ahri"),
            Champion(name: "Yasuo", imageUrl: "yasuo"),
            Champion(name: "Lux", imageUrl: "lux")
        ]
    }
    
    func loadProBuilds() {
        proBuilds = [
            ProBuild(title: "Ahri Mid Build", description: "AP Assassin", imageUrl: "probuild_1"),
            ProBuild(title: "Yasuo Top Build", description: "AD Fighter", imageUrl: "prbuild_2"),
            ProBuild(title: "Lux Support Build", description: "AP Utility", imageUrl: "probuild_2")
        ]
    }
    private let summonerService = SummonerService()

    func updateSummoner(gameName: String, tagLine: String) {
        summonerService.getSummonerInfo(byName: gameName, tagLine: tagLine) { result in
            DispatchQueue.main.async {
                switch result {
                case .success(let summoner):
                    self.accountName = gameName
                    self.profileImageName = "icon_\(summoner.profileIconId ?? 0)" // Update asset name
                    self.summonerLevel = Int(summoner.summonerLevel ?? 0)
                case .failure(let error):
                    print("Failed to update summoner info: \(error.localizedDescription)")
                }
            }
        }
    }
}
