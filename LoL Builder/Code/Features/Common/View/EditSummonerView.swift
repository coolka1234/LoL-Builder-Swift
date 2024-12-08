import SwiftUI

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
        .background(Color(UIColor.systemBackground).ignoresSafeArea())
        .navigationBarHidden(true)
    }
}

