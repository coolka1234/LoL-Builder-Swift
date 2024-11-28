//
//  ProBuildModel.swift
//  LoL Builder
//
//  Created by Coolka on 28/11/2024.
//

import Foundation

struct SingleProBuild: Identifiable {
    let id: UUID = UUID()
    let playerName: String
    let playerImageUrl: String
    let items: [String]
}
