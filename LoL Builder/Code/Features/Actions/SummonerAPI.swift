//
//  Summoner.swift
//  LoL Builder
//
//  Created by Coolka on 07/12/2024.
//


import Foundation

struct Summoner: Decodable {
    let accountId: String?
    let profileIconId: Int?
    let revisionDate: Int64?
    let id: String?
    let puuid: String?
    let summonerLevel: Int64?
}
//good luck with builds lol

class SummonerService {
    let accountService = AccountService()
    private var accountInfo: AccountAPI?
    private var errorMessage: String?
    func getSummonerInfo(byName name: String, tagLine: String, completion: @escaping (Result<Summoner, NetworkError>) -> Void) {
        let name = name.addingPercentEncoding(withAllowedCharacters: .urlHostAllowed) ?? name
        let tagLine = tagLine.addingPercentEncoding(withAllowedCharacters: .urlHostAllowed) ?? tagLine
        print("SummonerService: getSummonerInfo: name: \(name), tagLine: \(tagLine)")
        self.fetchAccountInfo(name: name, gameTag: tagLine)
        if let account = accountInfo {
            let url = "\(APIConfig.baseURL)/lol/summoner/v4/summoners/by-puuid/\(account.puuid)?api_key=\(APIConfig.apiKey)"
            NetworkManager.shared.fetch(url, completion: completion)
        }
    }
    func fetchAccountInfo(name: String, gameTag: String) {
        print("fetching puuid")
        accountService.getAccountPUUID(gameName: name, tagLine: gameTag) { result in
            DispatchQueue.main.async {
                switch result {
                case .success(let account):
                    self.accountInfo = account
                    print("account: \(account)")
                    self.errorMessage = nil
                case .failure(let error):
                    self.errorMessage = error.localizedDescription
                    print("error")
                }
            }
        }
    }
}

