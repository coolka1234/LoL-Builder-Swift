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
            Image(viewModel.proBuild.playerImageUrl)
            .frame(width: 120, height: 120)
            .clipShape(Circle())
            .overlay(Circle().stroke(Color.white, lineWidth: 2))
            .shadow(radius: 5)
            
            Text(viewModel.proBuild.playerName)
                .font(.title)
                .fontWeight(.bold)
                .foregroundColor(.white)

            HStack(spacing: 16) {
                ForEach(viewModel.proBuild.items, id: \.self) { index in
                        Image(index)
                        .resizable()
                        .scaledToFit()
                        .frame(width: 50, height: 50)
                        .clipShape(RoundedRectangle(cornerRadius: 8))
                    }
                }
            }
            .frame(minWidth:0,maxWidth: .infinity, alignment: .topLeading)
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
