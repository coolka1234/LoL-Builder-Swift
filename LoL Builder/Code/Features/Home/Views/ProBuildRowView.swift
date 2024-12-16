//
//  ProBuildRowView.swift
//  LoL Builder
//
//  Created by Coolka on 19/11/2024.
//

import SwiftUI

struct ProBuildRowView: View {
    let proBuild: ProBuild

    var body: some View {
        HStack(spacing: 16) {
            Image(proBuild.imageUrl).resizable().aspectRatio(contentMode: .fill)
                .frame(width: 80, height: 80)
                .clipShape(RoundedRectangle(cornerRadius: 8))

            VStack(alignment: .leading) {
                Text(proBuild.title)
                    .font(.headline)
                    .foregroundColor(.white)
                Text(proBuild.description)
                    .font(.subheadline)
                    .foregroundColor(.gray)
            }
            Spacer()
        }
    }
}

struct ProBuildRowView_Previews: PreviewProvider {
    static var previews: some View {
        ProBuildRowView(proBuild: ProBuild(title: "Ahri Mid Build", description: "AP Assassin", imageUrl: "https://via.placeholder.com/100"))
            .previewLayout(.sizeThatFits)
            .background(Color.black)
    }
}
