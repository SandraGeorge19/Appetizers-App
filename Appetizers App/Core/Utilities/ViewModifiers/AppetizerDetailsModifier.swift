//
//  AppetizerDetailsModifier.swift
//  Appetizers App
//
//  Created by Developer on 19/06/2024.
//

import SwiftUI

struct AppetizerDetailsModifier: ViewModifier {
    let screenWidth: CGFloat
    let screenHeight: CGFloat
    let shadowRadius: Double
    
    func body(content: Content) -> some View {
        content
            .frame(width: screenWidth, height: screenHeight)
            .background(Color(.systemBackground))
            .clipShape(.rect(cornerRadii: .init(topLeading: 16, bottomLeading: 16, bottomTrailing: 16, topTrailing: 16)))
            .shadow(radius: shadowRadius)
    }
}

