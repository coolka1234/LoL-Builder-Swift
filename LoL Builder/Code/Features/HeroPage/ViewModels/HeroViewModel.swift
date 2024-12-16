import SwiftUI

class HeroViewModel: ObservableObject {
    @Published var hero: Hero
    
    init(hero: Hero) {
        self.hero = hero
    }
    
    func fetchHeroData(name: String) {
        if(name=="Ahri"){
            self.hero = Hero(name: "Ahri", imageUrl: "ahri", description: "Ahri is a charismatic champion who excels at assassinating enemies with her burst damage.", role: "Mid", abilities: [
                Ability(name: "Orb of Deception", description: "Ahri sends out and pulls back her orb, dealing magic damage on the way out and true damage on the way back."),
                Ability(name: "Fox-Fire", description: "Ahri releases three fox-fires, that lock onto and attack nearby enemies."),
                Ability(name: "Charm", description: "Ahri blows a kiss that damages and charms an enemy it encounters, causing them to walk harmlessly towards her."),
                Ability(name: "Spirit Rush", description: "Ahri dashes forward and fires essence bolts, damaging nearby enemies. Spirit Rush can be cast up to three times before going on cooldown.")])
                
        }
                else if(name=="Yasuo"){
                    self.hero = Hero(name: "Yasuo", imageUrl: "yasuo", description: "Yasuo is a high mobility melee champion who excels at dealing sustained damage.", role: "Top", abilities: [
                        Ability(name: "Steel Tempest", description: "Yasuo thrusts forward with his sword, dealing damage to enemies in a line."),
                        Ability(name: "Wind Wall", description: "Yasuo creates a gust of wind that blocks enemy projectiles."),
                        Ability(name: "Sweeping Blade", description: "Yasuo dashes through a target enemy, dealing damage."),
                        Ability(name: "Last Breath", description: "Yasuo blinks to a nearby airborne enemy champion, suspending them and dealing damage.")])
                }
                else if(name=="Lux"){
                    self.hero = Hero(name: "Lux", imageUrl: "lux", description: "Lux is a long-range mage who excels at poking enemies with her abilities.", role: "Support", abilities: [
                        Ability(name: "Light Binding", description: "Lux releases a sphere of light that immobilizes and deals damage to enemies."),
                        Ability(name: "Prismatic Barrier", description: "Lux throws her wand, bending the light around herself and any friendly target hit."),
                        Ability(name: "Lucent Singularity", description: "Lux sends an anomaly of twisted light to a target area, slowing and damaging enemies in the area."),
                        Ability(name: "Final Spark", description: "Lux fires a giant laser in a line that deals damage to all enemies hit.")])
                        }
    }
    init(name: String) {
        self.hero = Hero(name: name, imageUrl: "", description: "", role: "", abilities: [])
        fetchHeroData(name: name)
    }
    
}

