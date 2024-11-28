import SwiftUI

class HeroViewModel: ObservableObject {
    @Published var hero: Hero
    
    init(hero: Hero) {
        self.hero = hero
    }
    
    func fetchHeroData() {
        //TODO
    }
    init(name: String) {
        self.hero = Hero(name: name, imageUrl: "", description: "", role: "", abilities: [])
    }
    
}

