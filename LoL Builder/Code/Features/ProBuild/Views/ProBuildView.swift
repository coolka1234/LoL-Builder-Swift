//
//  ProBuildView.swift
//  LoL Builder
//
//  Created by Coolka on 28/11/2024.
//


import SwiftUI

struct ProBuildView: View {
    @StateObject private var viewModel = ProBuildViewModel()

    var body: some View {
        VStack(spacing: 24) {
            Spacer()
            AsyncImage(url: URL(string: viewModel.proBuild.playerImageUrl)) { image in
                image
                    .resizable()
                    .scaledToFill()
            } placeholder: {
                ProgressView()
            }
            .frame(width: 120, height: 120)
            .clipShape(Circle())
            .overlay(Circle().stroke(Color.white, lineWidth: 2))
            .shadow(radius: 5)
            
            Text(viewModel.proBuild.playerName)
                .font(.title)
                .fontWeight(.bold)
                .foregroundColor(.white)

            HStack(spacing: 16) {
                ForEach(viewModel.proBuild.items.indices, id: \.self) { index in
                    if let url = URL(string: viewModel.proBuild.items[index]), !viewModel.proBuild.items[index].isEmpty {
                        AsyncImage(url: url) { image in
                            image
                                .resizable()
                                .scaledToFit()
                        } placeholder: {
                            ProgressView()
                        }
                        .frame(width: 50, height: 50)
                        .clipShape(RoundedRectangle(cornerRadius: 8))
                    } else {
                        RoundedRectangle(cornerRadius: 8)
                            .fill(Color.gray.opacity(0.3))
                            .frame(width: 50, height: 50)
                            .overlay(
                                Image(systemName: "plus")
                                    .foregroundColor(.white)
                            )
                    }
                }
            }
            Spacer()
        }
        .padding()
        .background(Color.black.ignoresSafeArea())
    }
}

struct ProBuildView_Previews: PreviewProvider {
    static var previews: some View {
        ProBuildView()
            .background(Color.black)
    }
}
