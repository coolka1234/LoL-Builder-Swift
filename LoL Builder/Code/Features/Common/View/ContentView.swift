//
//  ContentView.swift
//  LoL Builder
//
//  Created by Coolka on 28/11/2024.
//


import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationStack {
//            HomeView()
            APITestView()
        }
    }
}

@main
struct LoLCompanionApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}
