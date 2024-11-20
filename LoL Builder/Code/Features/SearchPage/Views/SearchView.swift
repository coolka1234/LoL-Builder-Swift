//
//  SearchView.swift
//  LoL Builder
//
//  Created by Coolka on 20/11/2024.
//

import SwiftUI

struct SearchView: View {
    @StateObject private var viewModel = SearchViewModel()

    var body: some View {
        VStack(spacing: 16) {
            TextField("Search...", text: $viewModel.searchText, onEditingChanged: { _ in
                viewModel.performSearch()
            })
            .textFieldStyle(RoundedBorderTextFieldStyle())
            .padding(.horizontal)

            // Category picker
            HStack(spacing: 0) {
                Button(action: {
                    viewModel.selectedCategory = .heroes
                    viewModel.performSearch()
                }) {
                    Text("Heroes")
                        .frame(maxWidth: .infinity)
                        .padding()
                        .background(viewModel.selectedCategory == .heroes ? Color.blue : Color.gray.opacity(0.2))
                        .foregroundColor(.white)
                        .cornerRadius(8)
                }
                Button(action: {
                    viewModel.selectedCategory = .proBuilds
                    viewModel.performSearch()
                }) {
                    Text("Pro Builds")
                        .frame(maxWidth: .infinity)
                        .padding()
                        .background(viewModel.selectedCategory == .proBuilds ? Color.blue : Color.gray.opacity(0.2))
                        .foregroundColor(.white)
                        .cornerRadius(8)
                }
            }
            .padding(.horizontal)

            // Search results
            if viewModel.searchResults.isEmpty {
                VStack(spacing: 16) {
                    Image(systemName: "magnifyingglass")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 100, height: 100)
                        .foregroundColor(.gray)

                    Text(viewModel.searchText.isEmpty ? "Start typing to search" : "No results found")
                        .foregroundColor(.gray)
                        .font(.headline)
                }
                .padding()
            } else {
                ScrollView {
                    LazyVStack(spacing: 16) {
                        ForEach(viewModel.searchResults) { result in
                            SearchResultRowView(result: result)
                        }
                    }
                    .padding()
                }
            }

            Spacer()
        }
        .background(Color.black.ignoresSafeArea())
        .onChange(of: viewModel.searchText) { _ in
            viewModel.performSearch()
        }
    }
}

struct SearchView_Previews: PreviewProvider {
    static var previews: some View {
        SearchView()
    }
}
