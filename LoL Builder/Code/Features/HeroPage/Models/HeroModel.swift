//
//  HeroModel.swift
//  LoL Builder
//
//  Created by Coolka on 20/11/2024.
//

import Foundation

struct Hero {
    let name: String
    let imageUrl: String
    let description: String
    let role: String
    let abilities: [Ability]
}

struct Ability: Identifiable {
    let id: UUID = UUID()
    let name: String
    let description: String
}
