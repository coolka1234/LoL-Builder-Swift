import SwiftUI

struct HeroView: View {
    @StateObject private var viewModel = HeroViewModel()

    var body: some View {
        GeometryReader { geometry in
            ScrollView {
                VStack(spacing: 16) {
                
                    AsyncImage(url: URL(string: viewModel.hero.imageUrl)) { image in
                        image
                            .resizable()
                            .scaledToFill()
                    } placeholder: {
                        ProgressView()
                    }
                    .frame(height: geometry.size.height * 0.5) // moze zamienic na zmienna idk
                    .clipped()

                    VStack(alignment: .leading, spacing: 8) {
                        Text(viewModel.hero.name)
                            .font(.largeTitle)
                            .fontWeight(.bold)
                            .foregroundColor(.white)

                        Text("Role: \(viewModel.hero.role)")
                            .font(.headline)
                            .foregroundColor(.gray)

                        Text(viewModel.hero.description)
                            .font(.body)
                            .foregroundColor(.white)
                    }
                    .padding()
                    Text("Abilities")
                        .font(.headline)
                        .foregroundColor(.white)
                        .padding(.horizontal)

                    ScrollView(.horizontal, showsIndicators: false) {
                        HStack(spacing: 16) {
                            ForEach(viewModel.hero.abilities) { ability in
                                AbilityRowView(
                                    ability: ability,
                                    isSelected: viewModel.selectedAbility?.id == ability.id
                                )
                                .onTapGesture {
                                    viewModel.selectAbility(ability)
                                }
                            }
                        }
                        .padding(.horizontal)
                    }

                    
                    if let selectedAbility = viewModel.selectedAbility {
                        VStack(alignment: .leading, spacing: 8) {
                            Text(selectedAbility.name)
                                .font(.headline)
                                .foregroundColor(.white)
                            Text(selectedAbility.description)
                                .font(.body)
                                .foregroundColor(.gray)
                        }
                        .padding()
                    }

                    Spacer()
                }
            }
        }
        .background(Color.black.ignoresSafeArea())
    }
}

struct HeroView_Previews: PreviewProvider {
    static var previews: some View {
        HeroView()
    }
}

