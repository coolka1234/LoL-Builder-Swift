import SwiftUI
import LeagueAPI

struct HomeView: View {
    @StateObject private var viewModel = HomeViewModel()
    @State private var gameName = ""
    @State private var tagLine = ""

    var body: some View {
        NavigationView {
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
                        NavigationLink(destination: EditSummonerView(
                            gameName: $gameName,
                            tagLine: $tagLine,
                            onConfirm: { newGameName, newTagLine in
                                viewModel.updateSummoner(gameName: newGameName, tagLine: newTagLine)
                            }
                        )) {
                            Text(viewModel.accountName)
                                .font(.headline)
                                .foregroundColor(.white)
                        }

                        Text("Tap to edit account test test test")
                            .font(.subheadline)
                            .foregroundColor(.gray)
                    }
                }

                ScrollView(.horizontal, showsIndicators: false) {
                    HStack(spacing: 16) {
                        ForEach(sampleChampions) { champion in
                            NavigationLink(destination: HeroView(viewModel: HeroViewModel(name: champion.name))) {
                                Text(champion.name)
                                    .foregroundColor(.white)
                                    .padding()
                                    .background(Color.blue)
                                    .cornerRadius(8)
                            }
                        }
                    }
                }

                List(proBuilds) { build in
                    NavigationLink(destination: ProBuildView()) {
                        Text(build.title)
                            .foregroundColor(.white)
                            .padding()
                    }
                }
                .listRowBackground(Color.gray.opacity(0.2))

            }
            .padding()
            .background(Color.black.ignoresSafeArea())
//            .navigationBarHidden(true)
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

struct EditSummonerView: View {
    @Environment(\.presentationMode) var presentationMode
    @Binding var gameName: String
    @Binding var tagLine: String
    var onConfirm: (String, String) -> Void

    var body: some View {
        VStack(spacing: 16) {
            Text("Edit Summoner Info")
                .font(.title2)
                .fontWeight(.bold)
                .padding()

            TextField("Game Name", text: $gameName)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .padding(.horizontal)

            TextField("Tag Line", text: $tagLine)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .padding(.horizontal)

            HStack {
                Button("Cancel") {
                    presentationMode.wrappedValue.dismiss()
                }
                .foregroundColor(.red)

                Spacer()

                Button("Confirm") {
                    onConfirm(gameName, tagLine)
                    presentationMode.wrappedValue.dismiss()
                }
                .foregroundColor(.blue)
            }
            .padding()

            Spacer()
        }
        .padding()
//        .background(Color(UIColor.systemBackground).ignoresSafeArea())
//        .navigationBarHidden(true)
    }
}



