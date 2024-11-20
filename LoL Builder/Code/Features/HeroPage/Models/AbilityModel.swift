//
//  AbilityModel.swift
//  LoL Builder
//
//  Created by Coolka on 20/11/2024.
//

import Foundation

struct Ability: Identifiable {
    let id: UUID = UUID()
    let name: String
    let description: String
    let iconUrl: String
}
