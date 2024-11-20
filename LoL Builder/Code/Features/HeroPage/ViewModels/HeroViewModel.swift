//
//  HeroViewModel.swift
//  LoL Builder
//
//  Created by Coolka on 20/11/2024.
//

import Foundation

class HeroViewModel: ObservableObject {
    @Published var hero: Hero
    @Published var selectedAbility: Ability?

    init() {
        hero = Hero(
            name: "Ahri",
            imageUrl: "https://via.placeholder.com/400x300",
            description: "Ahri is a powerful mage with enchanting abilities and a charismatic persona.",
            role: "Mage",
            abilities: [
                Ability(name: "Orb of Deception", description: "Ahri throws her orb, dealing magic damage.", iconUrl: "https://via.placeholder.com/50"),
                Ability(name: "Fox-Fire", description: "Ahri releases three fox-fires, damaging nearby enemies.", iconUrl: "https://via.placeholder.com/50"),
                Ability(name: "Charm", description: "Ahri blows a kiss, charming and damaging enemies.", iconUrl: "https://via.placeholder.com/50"),
                Ability(name: "Spirit Rush", description: "Ahri dashes forward, dealing damage to enemies.", iconUrl: "https://via.placeholder.com/50")
            ]
        )
    }

    // ktora abilite ma wyswietlic
    func selectAbility(_ ability: Ability) {
        selectedAbility = ability
    }
}
