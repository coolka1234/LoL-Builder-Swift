//
//  SearchViewModel.swift
//  LoL Builder
//
//  Created by Coolka on 20/11/2024.
//

import Foundation

class SearchViewModel: ObservableObject {
    @Published var searchText: String = ""
    @Published var selectedCategory: SearchCategory = .heroes
    @Published var searchResults: [SearchResult] = []

    enum SearchCategory {
        case heroes
        case proBuilds
    }

    private let allResults: [SearchResult] = [
        SearchResult(name: "Ahri", type: .hero, imageUrl: "https://via.placeholder.com/100", description: "Mage with enchanting abilities."),
        SearchResult(name: "Yasuo", type: .hero, imageUrl: "https://via.placeholder.com/100", description: "A melee fighter."),
        SearchResult(name: "Faker's Ahri Build", type: .proBuild, imageUrl: "https://via.placeholder.com/100", description: "Pro build for Ahri by Faker."),
        SearchResult(name: "Faker's Yasuo Build", type: .proBuild, imageUrl: "https://via.placeholder.com/100", description: "Pro build for Yasuo by Faker.")
    ]

    func performSearch() {
        if searchText.isEmpty {
            searchResults = []
        } else {
            searchResults = allResults.filter { result in
                result.name.localizedCaseInsensitiveContains(searchText) &&
                ((selectedCategory == .heroes && result.type == .hero) ||
                 (selectedCategory == .proBuilds && result.type == .proBuild))
            }
        }
    }
}
