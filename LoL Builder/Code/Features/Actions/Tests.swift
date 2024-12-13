//
//  Tests.swift
//  LoL Builder
//
//  Created by Coolka on 07/12/2024.
//

import SwiftUI

struct APITestView: View {
    @State private var championInfo: ChampionAPI?
    @State private var summonerInfo: Summoner?
    @State private var accountInfo: AccountAPI?
    @State private var errorMessage: String?

    let championService = ChampionService()
    let summonerService = SummonerService()
    let accountService = AccountService()

    var body: some View {
        VStack(spacing: 20) {
            if let champion = championInfo {
                Text("Champion: \(champion.name)")
                    .font(.headline)
                Text("Title: \(champion.title)")
                    .foregroundColor(.gray)
            }

            if let summoner = accountInfo {
                Text("Summoner: \(summoner.puuid), \(summoner.message ?? "No message")")
                    .font(.headline)
            }
            if let account = summonerInfo {
                Text("Account: \(account.id), Revision Date: \(account.revisionDate), Summoner Level: \(account.summonerLevel), Pfp id:  \(account.profileIconId)")
                    .font(.headline)
            }

            if let error = errorMessage {
                Text("Error: \(error)")
                    .foregroundColor(.red)
            }

            Button("Fetch Champion Info") {
                fetchChampionInfo()
            }
            .buttonStyle(.borderedProminent)

            Button("Fetch Summoner Info") {
            }
            .buttonStyle(.borderedProminent)
            Button("Fetch Account Info") {
                fetchAccountInfo()
            }
            .buttonStyle(.borderedProminent)
        }
        .padding()
    }

    func fetchChampionInfo() {
        championService.getChampionInfo(byName: "Ahri") { result in
            DispatchQueue.main.async {
                switch result {
                case .success(let champion):
                    self.championInfo = champion
                    self.errorMessage = nil
                case .failure(let error):
                    self.errorMessage = error.localizedDescription
                }
            }
        }
    }

//    func fetchSummonerInfo() {
//        summonerService.getSummonerInfo(byName: "Teluris") { result in
//            DispatchQueue.main.async {
//                switch result {
//                case .success(let summoner):
//                    self.summonerInfo = summoner
//                    self.errorMessage = nil
//                case .failure(let error):
//                    self.errorMessage = error.localizedDescription
//                }
//            }
//        }
//    }
    func fetchAccountInfo() {
        accountService.getAccountPUUID(gameName: "Teluris", tagLine: "EUNE") { result in
            DispatchQueue.main.async {
                switch result {
                case .success(let account):
                    self.accountInfo = account
                    self.errorMessage = nil
                case .failure(let error):
                    self.errorMessage = error.localizedDescription
                    
                }
            }
        }
    }
    func fetchByGameTag() {
        print("fetching")
        SummonerService().getSummonerInfo(byName: "tygrysor", tagLine: "EUNE") { result in
//            DispatchQueue.main.async {
                switch result {
                case .success(let summoner):
                    self.summonerInfo = summoner
                    print(summoner)
                    self.errorMessage = nil
                case .failure(let error):
                    self.errorMessage = error.localizedDescription
                    print("error")
                }
//            }
        }
    }
}
