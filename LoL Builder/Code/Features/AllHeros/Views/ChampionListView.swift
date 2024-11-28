//
//  ChampionListView.swift
//  LoL Builder
//
//  Created by Coolka on 28/11/2024.
//


import SwiftUI

struct ChampionListView: View {
    @Environment(\.presentationMode) var presentationMode
    @StateObject private var viewModel = ChampionListViewModel()
    
    var body: some View {
        NavigationStack {
            VStack {
                HStack {
                    Button(action: {
                        presentationMode.wrappedValue.dismiss()
                    }) {
                        Image(systemName: "chevron.left")
                            .foregroundColor(.white)
                            .imageScale(.large)
                    }
                    Spacer()
                }
                .padding()
            
                ScrollView {
                    LazyVStack(spacing: 16) {
                        ForEach(viewModel.champions) { champion in
                            NavigationLink(destination: HeroView(viewModel: HeroViewModel(name: champion.name))) {
                                ChampionRowView(champion: champion)
                            }
                        }
                    }
                    .padding()
                }
            }
            .background(Color.black.ignoresSafeArea())
            .navigationTitle("Champions")
//            .navigationBarHidden(true)
        }
    }
}

struct OneChampionRowView: View {
    let champion: Champion
    
    var body: some View {
        HStack {
            AsyncImage(url: URL(string: champion.imageUrl)) { image in
                image
                    .resizable()
                    .scaledToFit()
            } placeholder: {
                ProgressView()
            }
            .frame(width: 50, height: 50)
            .clipShape(RoundedRectangle(cornerRadius: 8))
            
            Text(champion.name)
                .font(.headline)
                .foregroundColor(.white)
            
            Spacer()
        }
        .padding()
        .background(Color.gray.opacity(0.2))
        .cornerRadius(8)
    }
}

struct ChampionListView_Previews: PreviewProvider {
    static var previews: some View {
        ChampionListView()
            .background(Color.black)
    }
}
