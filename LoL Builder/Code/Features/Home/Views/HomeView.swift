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
            HStack {
                Text(viewModel.accountName)
                    .font(.title2)
                    .fontWeight(.bold)
                    .foregroundColor(.white)
                Spacer()
                NavigationLink(destination: SearchView()) {
                    Image(systemName: "magnifyingglass")  
                        .foregroundColor(.white)
                        .font(.title)
                        .padding()
                }
            }
            .padding(.horizontal)

            Text("Champions")
                .font(.headline)
                .foregroundColor(.white)
                .padding(.horizontal)

            ScrollView(.horizontal) {
                HStack(spacing: 15) {
                    ForEach(sampleChampions) { champion in
                        NavigationLink(destination: HeroView(viewModel: HeroViewModel(name: champion.name))) {
                            Text(champion.name)
                                .foregroundColor(.blue)
                                .padding()
                                .background(Color.gray.opacity(0.2))
                                .cornerRadius(10)
                        }
                    }
                }
                .padding(.horizontal)
            }
            Text("Pro Builds")
                .font(.headline)
                .foregroundColor(.white)
                .padding(.horizontal)

            List(proBuilds) { build in
                NavigationLink(destination: ProBuildView()) {
                    Text(build.title)
                        .foregroundColor(.white)
                }
                .listRowBackground(Color.black)
            }
        }
        .background(Color.black.ignoresSafeArea())
    }
}
let sampleChampions = [
    Champion(name: "Ahri", imageUrl: "https://via.placeholder.com/300"),
    Champion(name: "Yasuo", imageUrl: "https://via.placeholder.com/300"),
]
let proBuilds = [
    ProBuild(title: "Ahri Mid Build", description: "AP Assassin", imageUrl: "https://via.placeholder.com/100"),
    ProBuild(title: "Yasuo Top Build", description: "AD Fighter", imageUrl: "https://via.placeholder.com/100"),
    ProBuild(title: "Lux Support Build", description: "AP Utility", imageUrl: "https://via.placeholder.com/100")
]
struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
