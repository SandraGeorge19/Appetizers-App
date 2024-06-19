//
//  AppetizerMainImageView.swift
//  Appetizers App
//
//  Created by Developer on 17/06/2024.
//

import SwiftUI

struct AppetizerMainImageView: View {
    let mainImage: String
    var body: some View {
        AsyncImage(url: URL(string: mainImage)) { image in
            image
                .resizable()
                .aspectRatio(contentMode: .fill)
        } placeholder: {
            Image("food-placeholder")
                .resizable()
                .aspectRatio(contentMode: .fill)
        }
        .frame(width: 300, height: UIScreen.main.bounds.height * 0.25)
//        Image(mainImage)
//            .resizable()
//            .aspectRatio(contentMode: .fill)
//            .frame(width: 300, height: UIScreen.main.bounds.height * 0.25)
    }
}

#Preview {
    AppetizerMainImageView(mainImage: "https://seanallen-course-backend.herokuapp.com/images/appetizers/mozzarella-sticks.jpg")
}
