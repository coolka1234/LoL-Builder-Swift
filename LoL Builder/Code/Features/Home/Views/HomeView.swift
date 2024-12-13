import SwiftUI
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
                Spacer()
                Button(action: {
                    print("Search button tapped!")
                }){
                    NavigationLink(destination: SearchView())
                    {
                        Image(systemName: "magnifyingglass")
                            .foregroundColor(.white)
                            .font(.title)
                            .padding()
                    }
                }
                .background(Color.blue)
                .clipShape(Circle())
                    
                        
                    
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
                        
                        Text("Tap to edit account")
                            .font(.subheadline)
                            .foregroundColor(.gray)
                    }
                }
                
                ScrollView(.horizontal, showsIndicators: false) {
                    HStack(spacing: 16) {
                        ForEach(viewModel.champions, id: \.id) { champion in
                            NavigationLink(
                                destination: HeroView(viewModel: HeroViewModel(name:champion.name)),
                                label: {
                                    ChampionRowView(champion: champion)
                                }
                                                                           )
                        }
                    }
                }
                
                List(viewModel.proBuilds, id: \.id) { build in
                    NavigationLink(
                        destination: ProBuildView(),
                        label:{
                                ProBuildRowView(proBuild: build)
                            }
                    )
                        Text(build.title)
                            .font(.headline)
                            .foregroundColor(.white)
                    }
                    .listRowBackground(Color.black)
                    
                    
                }
                .padding()
                .background(Color.black.ignoresSafeArea())
                //            .navigationBarHidden(true)
            }
        }
    }
    
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



