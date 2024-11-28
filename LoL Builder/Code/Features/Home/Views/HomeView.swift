//
//  HomeView.swift
//  LoL Builder
//
//  Created by Coolka on 19/11/2024.
//

import SwiftUI

struct HomeView: View {
    @StateObject private var viewModel = HomeViewModel()

    var body: some View {
        VStack(alignment: .leading, spacing: 16) {
            // Top bar with account name and search button
            HStack {
                Text(viewModel.accountName)
                    .font(.title2)
                    .fontWeight(.bold)
                    .foregroundColor(.white)
                Spacer()
                Button(action: {
                    print("Search button tapped")
                }) {
                    Image(systemName: "magnifyingglass")
                        .foregroundColor(.white)
                        .font(.title2)
                }
            }
            .padding(.horizontal)

            Text("Champions")
                .font(.headline)
                .foregroundColor(.white)
                .padding(.horizontal)

            ScrollView(.horizontal, showsIndicators: false) {
                HStack(spacing: 16) {
                    ForEach(viewModel.champions) { champion in
                        ChampionRowView(champion: champion)
                    }
                }
                .padding(.horizontal)
            }

            Text("Pro Builds")
                .font(.headline)
                .foregroundColor(.white)
                .padding(.horizontal)

            ScrollView {
                VStack(spacing: 16) {
                    ForEach(viewModel.proBuilds) { proBuild in
                        ProBuildRowView(proBuild: proBuild)
                    }
                }
                .padding(.horizontal)
            }
        }
        .background(Color.black.ignoresSafeArea())
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
