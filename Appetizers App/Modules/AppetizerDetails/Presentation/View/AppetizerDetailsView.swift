//
//  AppetizerDetailsView.swift
//  Appetizers App
//
//  Created by Developer on 16/06/2024.
//

import SwiftUI

struct AppetizerDetailsView: View {
    @EnvironmentObject var order: OrderViewModel
    
    let appetizer: AppetizerModel?
    
    @Binding var isShowingDetails: Bool
    var body: some View {
        if let appetizer {
            VStack {
                AppetizerMainImageView(mainImage: appetizer.imageUrl)
                VStack {
                    Text(appetizer.appetizerName)
                        .font(.title2)
                        .fontWeight(.semibold)
                        .multilineTextAlignment(.center)
                    
                    Text(appetizer.description)
                        .lineLimit(nil)
                        .multilineTextAlignment(.center)
                        .font(.body)
                        .padding()
                    
                    HStack(spacing: 40) {
                        AppetizerNeutritionDetailsCell(cellTitle: "Calories", cellSubtitle: "\(appetizer.calories)")
                        AppetizerNeutritionDetailsCell(cellTitle: "Carbs", cellSubtitle: "\(appetizer.carbs) g")
                        AppetizerNeutritionDetailsCell(cellTitle: "Protien", cellSubtitle: "\(appetizer.protein) g")
                    }
                }
                
                Spacer()
                MainButtonView(title: "$\(appetizer.price, specifier: "%0.02f") - Add to Order") {
                    order.addToOrder(appetizer)
                    isShowingDetails = false
                }
            }
            .modifier(AppetizerDetailsModifier(screenWidth: 300,
                                               screenHeight: UIScreen.main.bounds.height * 0.55,
                                               shadowRadius: 8.0)
            )
            .overlay(alignment: .topTrailing) {
                DismissButtonView(isShowingDetails: $isShowingDetails)
            }
        }
    }
}

#Preview {
    AppetizerDetailsView(appetizer: MockData.sampleModel, isShowingDetails: .constant(true))
}
