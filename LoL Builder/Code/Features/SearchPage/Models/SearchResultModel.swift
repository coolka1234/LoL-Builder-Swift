//
//  SearchResultModel.swift
//  LoL Builder
//
//  Created by Coolka on 20/11/2024.
//
import Foundation

enum SearchResultType {
    case hero
    case proBuild
}

struct SearchResult: Identifiable {
    let id: UUID = UUID()
    let name: String
    let type: SearchResultType
    let imageUrl: String
    let description: String
}

