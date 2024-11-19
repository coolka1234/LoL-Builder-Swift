//
//  ChampioRowView.swift
//  LoL Builder
//
//  Created by Coolka on 19/11/2024.
//

import SwiftUI

struct ChampionRowView: View {
    let champion: Champion

    var body: some View {
        VStack {
            AsyncImage(url: URL(string: champion.imageUrl)) { image in
                image
                    .resizable()
                    .scaledToFit()
            } placeholder: {
                ProgressView()
            }
            .frame(width: 50, height: 50)
            .clipShape(Circle())

            Text(champion.name)
                .font(.caption)
                .foregroundColor(.white)
        }
    }
}

struct ChampionRowView_Previews: PreviewProvider {
    static var previews: some View {
        ChampionRowView(champion: Champion(name: "Ahri", imageUrl: "https://via.placeholder.com/50"))
            .previewLayout(.sizeThatFits)
            .background(Color.black)
    }
}
