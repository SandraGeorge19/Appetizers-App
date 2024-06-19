//
//  MainButtonView.swift
//  Appetizers App
//
//  Created by Developer on 17/06/2024.
//

import SwiftUI

struct MainButtonView: View {
    let title: LocalizedStringKey
    let action: (() -> Void)
    var body: some View {
        Button {
            action()
        } label: {
            Text(title)
                .font(.system(size: 18, weight: .semibold))
                .foregroundStyle(.white)
                .frame(width: 250, height: 45)
                .background(.brandPrimary)
                .clipShape(.buttonBorder)
        }.padding(.bottom)
    }
}

#Preview {
    MainButtonView(title: "Test Title", action: {})
}
