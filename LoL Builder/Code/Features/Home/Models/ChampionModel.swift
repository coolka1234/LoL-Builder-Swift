//
//  ChampionModel.swift
//  LoL Builder
//
//  Created by Coolka on 19/11/2024.
//

import Foundation

struct Champion: Identifiable {
    let id: UUID = UUID()
    let name: String
    let imageUrl: String
}
