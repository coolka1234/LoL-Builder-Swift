import SwiftUI

struct HeroView: View {
    @StateObject var viewModel: HeroViewModel
    @State private var selectedAbility: Ability?

    var body: some View {
        ScrollView {
            VStack(spacing: 20) {
                AsyncImage(url: URL(string: viewModel.hero.imageUrl)) { image in
                    image
                        .resizable()
                        .scaledToFit()
                } placeholder: {
                    ProgressView()
                }
                .frame(height: 300)
                .clipShape(RoundedRectangle(cornerRadius: 16))
                .shadow(radius: 10)
                
                Text(viewModel.hero.name)
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .foregroundColor(.white)
                
                Text(viewModel.hero.description)
                    .font(.body)
                    .foregroundColor(.white)
                    .multilineTextAlignment(.center)
                    .padding()

                VStack(alignment: .leading, spacing: 10) {
                    Text("Abilities")
                        .font(.title2)
                        .fontWeight(.semibold)
                        .foregroundColor(.white)
                    
                    ForEach(viewModel.hero.abilities) { ability in
                        Button(action: {
                            selectedAbility = ability  
                        }) {
                            Text(ability.name)
                                .font(.headline)
                                .foregroundColor(.blue)
                        }
                        .padding(.vertical, 5)
                    }
                }
                .frame(maxWidth: .infinity, alignment: .leading)
                
                if let ability = selectedAbility {
                    VStack(alignment: .leading, spacing: 8) {
                        Text(ability.name)
                            .font(.headline)
                            .foregroundColor(.white)
                        Text(ability.description)
                            .font(.body)
                            .foregroundColor(.gray)
                    }
                    .padding()
                    .background(Color.gray.opacity(0.2))
                    .cornerRadius(10)
                }
            }
            .padding()
        }
        .background(Color.black.ignoresSafeArea())
    }
}

struct HeroView_Previews: PreviewProvider {
    static var previews: some View {
        let mockHero = Hero(
            name: "Ahri",
            imageUrl: "https://via.placeholder.com/300",
            description: "Ahri is a nine-tailed fox mage with charm and orb abilities.",
            role: "Mage",
            abilities: [
                Ability(name: "Orb of Deception", description: "Throws an orb that returns to her, dealing magic and true damage."),
                Ability(name: "Fox-Fire", description: "Releases three fox-fires that lock onto and attack nearby enemies."),
                Ability(name: "Charm", description: "Charms an enemy, causing them to walk harmlessly towards her."),
                Ability(name: "Spirit Rush", description: "Dashes forward and fires essence bolts at nearby enemies.")
            ]
        )
        HeroView(viewModel: HeroViewModel(hero: mockHero))
    }
}

