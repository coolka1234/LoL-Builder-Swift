//
//  Summoner.swift
//  LoL Builder
//
//  Created by Coolka on 07/12/2024.
//


import Foundation

struct Summoner: Decodable {
    let accountId: String
    let profileIconId: Int
    let revisionDate: Int64
    let id: String
    let puuid: String
    let summonerLevel: Int64
}

class SummonerService {
    let accountService = AccountService()
    private var errorMessage: String?
    
    func getSummonerInfo(byName name: String, tagLine: String, completion: @escaping (Result<Summoner, NetworkError>) -> Void) {
        let nameEncoded = name.addingPercentEncoding(withAllowedCharacters: .urlHostAllowed) ?? name
        let tagLineEncoded = tagLine.addingPercentEncoding(withAllowedCharacters: .urlHostAllowed) ?? tagLine
        
        print("SummonerService: getSummonerInfo: name: \(nameEncoded), tagLine: \(tagLineEncoded)")
        
        fetchAccountInfo(name: nameEncoded, gameTag: tagLineEncoded) { result in
            switch result {
            case .success(let account):
                print("Successfully fetched account info: \(account)")
                
                let url = "\(APIConfig.baseURL)/lol/summoner/v4/summoners/by-puuid/\(account.puuid)?api_key=\(APIConfig.apiKey)"
                print("Fetching summoner info from URL: \(url)")
                
                NetworkManager.shared.fetch(url, completion: completion)
                
            case .failure(let error):
                print("Failed to fetch account info: \(error.localizedDescription)")
                completion(.failure(.requestFailed))
            }
        }
    }
    
    private func fetchAccountInfo(name: String, gameTag: String, completion: @escaping (Result<AccountAPI, NetworkError>) -> Void) {
        print("Fetching PUUID for name: \(name), tagLine: \(gameTag)")
        accountService.getAccountPUUID(gameName: name, tagLine: gameTag, completion: completion)
    }
}


