//
//  AppetizersListViewCell.swift
//  Appetizers App
//
//  Created by Developer on 12/06/2024.
//

import SwiftUI

struct AppetizersListViewCell: View {
    var appetizer: AppetizerModel
    var body: some View {
        HStack {
            ZStack {
                AsyncImage(url: URL(string: appetizer.imageUrl)) { image in
                    image.resizable()
                } placeholder: {
                    Image("food-placeholder").resizable()
                }
//                AppetizerRemoteImage(urlString: appetizer.imageUrl)
            }
            .modifier(MainImageModifier())
            VStack(alignment: .leading, spacing: 4) {
                Text(appetizer.appetizerName)
                    .lineLimit(nil)
                    .font(.system(size: 18, weight: .bold))
                Text("$\(appetizer.price, specifier: "%0.2f")")
                    .fontWeight(.semibold)
                    .foregroundStyle(.secondary)
            }.padding()
        }
    }
}

#Preview {
    AppetizersListViewCell(appetizer: MockData.sampleModel)
}
