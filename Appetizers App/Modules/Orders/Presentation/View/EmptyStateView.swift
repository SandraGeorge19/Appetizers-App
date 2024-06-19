//
//  EmptyStateView.swift
//  Appetizers App
//
//  Created by Developer on 18/06/2024.
//

import SwiftUI

struct EmptyStateView: View {
    let imageName: String
    let message: String
    var body: some View {
        ZStack {
            Color(.systemBackground)
                .ignoresSafeArea()
            
            VStack {
                Image(imageName)
                    .resizable()
                    .scaledToFit()
                    .frame(height: 200)
                Text(message)
                    .font(.title3)
                    .fontWeight(.semibold)
                    .foregroundStyle(.secondary)
                    .multilineTextAlignment(.center )
                    .padding()
                
            }.offset(y: -100)
        }
    }
}

#Preview {
    EmptyStateView(imageName: "empty-order", message: "You have no items in your order.")
}
