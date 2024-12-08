//
//  HomeView.swift
//  LoL Builder
//
//  Created by Coolka on 19/11/2024.
//

import SwiftUI

struct HomeView: View {
    @StateObject private var viewModel = HomeViewModel()
    @State private var showPopup = false
    @State private var gameName = ""
    @State private var tagLine = ""

    var body: some View {
        VStack(alignment: .leading, spacing: 16) {
            HStack(spacing: 16) {
                ZStack {
                    Image(viewModel.profileImageName)
                                                .resizable()
                                                .scaledToFill()
                                                .frame(width: 60, height: 60)
                                                .clipShape(Circle())
                                                .shadow(color: .black.opacity(0.3), radius: 5, x: 0, y: 3)

                    if let level = viewModel.summonerLevel {
                        Text("\(level)")
                            .font(.caption)
                            .fontWeight(.bold)
                            .foregroundColor(.white)
                            .padding(6)
                            .background(Circle().fill(Color.blue))
                            .offset(x: 20, y: 20)
                    }
                }

                VStack(alignment: .leading) {
                    Text(viewModel.accountName)
                        .font(.headline)
                        .foregroundColor(.white)
                        .onTapGesture {
                            showPopup = true
                        }
                                
                        
                    Text("Tap to edit account")
                        .font(.subheadline)
                        .foregroundColor(.gray)
                }
            }

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
//        .navigationBarHidden(true)
        .popover(isPresented: $showPopup) {
            SummonerInputPopup(
                gameName: $gameName,
                tagLine: $tagLine,
                onCancel: { showPopup = false },
                onConfirm: {
                    viewModel.updateSummoner(gameName: gameName, tagLine: tagLine)
                    showPopup = false
                }
            )
        }
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
struct SummonerInputPopup: View {
    @Binding var gameName: String
    @Binding var tagLine: String
    var onCancel: () -> Void
    var onConfirm: () -> Void

    var body: some View {
        VStack(spacing: 16) {
            Text("Edit Summoner")
                .font(.headline)
            TextField("Game Name", text: $gameName)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .padding(.horizontal)
            TextField("Tag Line", text: $tagLine)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .padding(.horizontal)
            HStack {
                Button("Cancel") {
                    onCancel()
                }
                .foregroundColor(.red)

                Spacer()

                Button("Confirm") {
                    onConfirm()
                }
                .foregroundColor(.blue)
            }
            .padding()
        }
        .padding()
        .background(Color.white)
        .cornerRadius(12)
        .shadow(radius: 10)
        .padding(.horizontal, 32)
    }
}
