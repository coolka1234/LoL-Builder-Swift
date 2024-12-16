//
//  SearchResultRowView.swift
//  LoL Builder
//
//  Created by Coolka on 20/11/2024.
//

import SwiftUI

struct SearchResultRowView: View {
    let result: SearchResult

    var body: some View {
        HStack(spacing: 16) {
            Image(result.imageUrl)
            .frame(width: 50, height: 50)
            .clipShape(RoundedRectangle(cornerRadius: 8))

            VStack(alignment: .leading, spacing: 4) {
                Text(result.name)
                    .font(.headline)
                    .foregroundColor(.white)
                Text(result.description)
                    .font(.subheadline)
                    .foregroundColor(.gray)
            }

            Spacer()
        }
        .padding()
        .background(Color.gray.opacity(0.1))
        .cornerRadius(8)
    }
}

struct SearchResultRowView_Previews: PreviewProvider {
    static var previews: some View {
        SearchResultRowView(result: SearchResult(
            name: "Ahri",
            type: .hero,
            imageUrl: "https://via.placeholder.com/100",
            description: "A mage with enchanting abilities."
        ))
        .previewLayout(.sizeThatFits)
        .background(Color.black)
    }
}
