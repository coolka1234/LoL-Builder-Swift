//
//  AccountAPI.swift
//  LoL Builder
//
//  Created by Coolka on 07/12/2024.
//

import Foundation

struct AccountAPI: Decodable {
    let puuid: String
    let gameName: String
    let tagLine: String
}
class AccountService {
    func getAccountPUUID(gameName: String, tagLine: String, completion: @escaping (Result<AccountAPI, NetworkError>) -> Void) {
        let url = "https://europe.api.riotgames.com/riot/account/v1/accounts/by-riot-id/\(gameName)/\(tagLine)?api_key=\(APIConfig.apiKey)"
        print(url)
        NetworkManager.shared.fetch(url, completion: completion)
    }
}
