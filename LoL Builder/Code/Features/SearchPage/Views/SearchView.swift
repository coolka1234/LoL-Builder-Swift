import SwiftUI


struct SearchView: View {
    @StateObject private var viewModel = SearchViewModel()

    var body: some View {
        VStack(spacing: 16) {
            // Search Bar
            TextField("Search...", text: $viewModel.searchText, onEditingChanged: { _ in
                viewModel.performSearch()
            })
            .textFieldStyle(RoundedBorderTextFieldStyle())
            .padding(.horizontal)

            // Category Selection Bar
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

            // Results or Placeholder
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
                // Search Results
                ScrollView {
                    LazyVStack(spacing: 16) {
                        ForEach(viewModel.searchResults) { result in
                            NavigationLink(destination: destinationView(for: result)) {
                                SearchResultRowView(result: result)
                            }
                            .buttonStyle(PlainButtonStyle()) // Removes button styling
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

    // Determines the destination based on result type
    private func destinationView(for result: SearchResult) -> some View {
        switch result.type {
        case .hero:
            return AnyView(HeroView(viewModel: HeroViewModel(name: result.name)))
        case .proBuild:
            return AnyView(ProBuildView())
        }
    }
}

struct SearchView_Previews: PreviewProvider {
    static var previews: some View {
        SearchView()
    }
}
