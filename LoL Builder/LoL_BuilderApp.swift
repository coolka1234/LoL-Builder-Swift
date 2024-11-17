//
//  LoL_BuilderApp.swift
//  LoL Builder
//
//  Created by Coolka on 17/11/2024.
//

import SwiftUI
import SwiftData

@main
struct LoL_BuilderApp: App {
    var sharedModelContainer: ModelContainer = {
        let schema = Schema([
            Item.self,
        ])
        let modelConfiguration = ModelConfiguration(schema: schema, isStoredInMemoryOnly: false)

        do {
            return try ModelContainer(for: schema, configurations: [modelConfiguration])
        } catch {
            fatalError("Could not create ModelContainer: \(error)")
        }
    }()

    var body: some Scene {
        WindowGroup {
            ContentView()
        }
        .modelContainer(sharedModelContainer)
    }
    
}

struct ContentView: View {
    var body: some View {
        ZStack() {
            ZStack() {
                Rectangle()
                    .foregroundColor(.clear)
                    .frame(width: 375, height: 34)
                    .background(Color(red: 0.86, green: 0.86, blue: 0.90))
                    .offset(x: 0, y: 0)
                    .opacity(0)
                Rectangle()
                    .foregroundColor(.clear)
                    .frame(width: 135, height: 5)
                    .background(Color(red: 0.40, green: 0.40, blue: 0.40))
                    .cornerRadius(100)
                    .offset(x: 0, y: 6.50)
            }
            .frame(width: 375, height: 34)
            .offset(x: 6.50, y: 425)
            ZStack() {
                Rectangle()
                    .foregroundColor(.clear)
                    .frame(width: 362, height: 56)
                    .background(Color(red: 0.12, green: 0.12, blue: 0.14))
                    .cornerRadius(4)
                    .offset(x: 0, y: 0)
                ZStack() {
                    
                }
                .frame(width: 25.93, height: 24)
                .offset(x: -150.74, y: 0)
            }
            .frame(width: 362, height: 56)
            .offset(x: 0, y: -317)
            Rectangle()
                .foregroundColor(.clear)
                .frame(width: 375, height: 0)
                .overlay(
                    Rectangle()
                        .stroke(Color(red: 0.27, green: 0.28, blue: 0.32), lineWidth: 0.50)
                )
                .offset(x: -13.50, y: -233)
                .opacity(0.32)
            HStack(alignment: .top, spacing: 24) {
                VStack(alignment: .leading, spacing: 8) {
                    Text("Champions")
                        .font(Font.custom("Inter", size: 14))
                        .lineSpacing(24)
                        .foregroundColor(.white)
                    Rectangle()
                        .foregroundColor(.clear)
                        .frame(maxWidth: .infinity, minHeight: 0, maxHeight: 0)
                        .overlay(
                            Rectangle()
                                .stroke(Color(red: 0.55, green: 0, blue: 1), lineWidth: 1)
                        )
                }
                VStack(alignment: .leading, spacing: 4) {
                    Text("Pro-players")
                        .font(Font.custom("Inter", size: 14))
                        .lineSpacing(24)
                        .foregroundColor(Color(red: 0.70, green: 0.69, blue: 0.72))
                }
                .frame(width: 91)
                .opacity(0.65)
            }
            .frame(width: 355)
            .offset(x: -3.50, y: -249)
            VStack(alignment: .leading, spacing: 0) {
                Ellipse()
                    .foregroundColor(.clear)
                    .frame(maxWidth: .infinity, minHeight: 322.48, maxHeight: 322.48)
                    .opacity(0.40)
            }
            .frame(height: 322.48)
            .offset(x: 0.01, y: -23.76)
            .opacity(0.57)
            ZStack() {
                Text("Start typing to see results")
                    .font(Font.custom("Inter", size: 14))
                    .lineSpacing(24)
                    .foregroundColor(Color(red: 0.70, green: 0.69, blue: 0.72))
                    .offset(x: 0, y: 18.50)
                Text("Search")
                    .font(Font.custom("DM Sans", size: 20).weight(.bold))
                    .lineSpacing(24)
                    .foregroundColor(.white)
                    .offset(x: -6.50, y: -18.50)
            }
            .frame(width: 172, height: 61)
            .offset(x: 0, y: 68.50)
            ZStack() {
                
            }
            .frame(width: 24, height: 24)
            .offset(x: -164, y: -381)
            Rectangle()
                .foregroundColor(.clear)
                .frame(width: 135, height: 143)
                .background(
                    AsyncImage(url: URL(string: "https://via.placeholder.com/135x143"))
                )
                .offset(x: -6.50, y: -33.50)
            HStack(alignment: .top, spacing: 231.79) {
                ZStack() {
                    Rectangle()
                        .foregroundColor(.clear)
                        .frame(width: 15.27, height: 10.97)
                        .background(
                            AsyncImage(url: URL(string: "https://via.placeholder.com/15x11"))
                        )
                        .offset(x: -3.67, y: -0.19)
                    ZStack() { }
                        .frame(width: 24.33, height: 11.33)
                        .offset(x: 21.17, y: 0)
                    Rectangle()
                        .foregroundColor(.clear)
                        .frame(width: 17, height: 10.67)
                        .background(
                            AsyncImage(url: URL(string: "https://via.placeholder.com/17x11"))
                        )
                        .offset(x: -24.83, y: 0)
                }
                .frame(width: 66.66, height: 11.34)
            }
            .padding(
                EdgeInsets(top: 19.17, leading: 33.45, bottom: 13.33, trailing: 14.67)
            )
            .frame(width: 375, height: 44)
            .background(Color(red: 0.06, green: 0.07, blue: 0.08))
            .offset(x: 6.50, y: -415)
        }
        .frame(width: 402, height: 874)
        .background(Color(red: 0.06, green: 0.07, blue: 0.08))
    }
}

