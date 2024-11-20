//
//  AbilityRowvView.swift
//  LoL Builder
//
//  Created by Coolka on 20/11/2024.
//

import SwiftUI

struct AbilityRowView: View {
    let ability: Ability
    let isSelected: Bool

    var body: some View {
        VStack {
            AsyncImage(url: URL(string: ability.iconUrl)) { image in
                image
                    .resizable()
                    .scaledToFit()
            } placeholder: {
                ProgressView()
            }
            .frame(width: 50, height: 50)
            .clipShape(Circle())
            .overlay(
                Circle()
                    .stroke(isSelected ? Color.blue : Color.clear, lineWidth: 2)
            )

            Text(ability.name)
                .font(.caption)
                .foregroundColor(isSelected ? .blue : .white)
        }
        .padding(8)
        .background(isSelected ? Color.white.opacity(0.1) : Color.clear)
        .cornerRadius(8)
    }
}

struct AbilityRowView_Previews: PreviewProvider {
    static var previews: some View {
        AbilityRowView(
            ability: Ability(name: "Charm", description: "Ahri blows a kiss, charming and damaging enemies.", iconUrl: "https://via.placeholder.com/50"),
            isSelected: true
        )
        .previewLayout(.sizeThatFits)
        .background(Color.black)
    }
}
