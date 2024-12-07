//
//  Summoner.swift
//  LoL Builder
//
//  Created by Coolka on 07/12/2024.
//


import Foundation

struct Summoner: Decodable {
    let id: String
    let name: String
    let profileIconId: Int
    let summonerLevel: Int
}

class SummonerService {
    func getSummonerInfo(byName name: String, completion: @escaping (Result<Summoner, NetworkError>) -> Void) {
        let encodedName = name.addingPercentEncoding(withAllowedCharacters: .urlQueryAllowed) ?? name
        let url = "\(APIConfig.baseURL)/lol/summoner/v4/summoners/by-name/\(encodedName)?api_key=\(APIConfig.apiKey)"
        NetworkManager.shared.fetch(url, completion: completion)
    }
}
