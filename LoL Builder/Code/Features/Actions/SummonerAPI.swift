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
//good luck with builds lol

class SummonerService {
    func getSummonerInfo(byName name: String, tagLine: String, completion: @escaping (Result<Summoner, NetworkError>) -> Void) {
        let encodedName = name.addingPercentEncoding(withAllowedCharacters: .urlQueryAllowed) ?? name
        let accountInfo=fetchAccountInfo(name: name, gameTag: tagLine)
        let url = "\(APIConfig.baseURL)/lol/summoner/v4/summoners/by-puuid/\(accountInfo.puuid)?api_key=\(APIConfig.apiKey)"
        NetworkManager.shared.fetch(url, completion: completion)
    }
}
func fetchAccountInfo(name: String, gameTag: String)-> AccountAPI {
    let accountService = AccountService()
    var accountInfo: AccountAPI?
    var errorMessage: String?
    accountService.getAccountPUUID(gameName: name, tagLine: gameTag) { result in
        DispatchQueue.main.async {
            switch result {
            case .success(let account):
                accountInfo = account
                errorMessage = nil
            case .failure(let error):
                errorMessage = error.localizedDescription
            }
        }
    }
    return accountInfo!
}
