//
//  Champion.swift
//  LoL Builder
//
//  Created by Coolka on 07/12/2024.
//


import Foundation

struct ChampionAPI: Decodable {
    let id: Int
    let name: String
    let title: String
    let description: String
    let abilities: [String]
}

class ChampionService {
    func getChampionInfo(byName name: String, completion: @escaping (Result<ChampionAPI, NetworkError>) -> Void) {
        let url = "\(APIConfig.baseURL)/lol/static-data/v3/champions?name=\(name)&api_key=\(APIConfig.apiKey)"
        NetworkManager.shared.fetch(url, completion: completion)
    }
}
