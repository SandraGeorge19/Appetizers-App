//
//  MainImageModifier.swift
//  Appetizers App
//
//  Created by Developer on 19/06/2024.
//

import SwiftUI

struct MainImageModifier: ViewModifier {
    func body(content: Content) -> some View {
        content
            .frame(width: 130, height: 80)
            .clipShape(.buttonBorder)
    }
}
