//
//  SplashScreen.swift
//  Appetizers App
//
//  Created by Sandra George on 01/07/2024.
//

import SwiftUI

struct SplashScreen: View {
    @State private var isPresentingSplash = false
    private let viewModel = OrderViewModel()
    
    var body: some View {
        ZStack {
            if !isPresentingSplash {
                LottieView(lottieAnimationName: "cooking-splash", loopMode: .loop)
                    .frame(width: UIScreen.main.bounds.width, height:  300)
            } else {
               AppetizersTabView()
                    .environmentObject(viewModel)
            }
        }.onAppear {
            toggleSplashScreenVisibility()
        }
    }
    
    private func toggleSplashScreenVisibility() {
        DispatchQueue.main.asyncAfter(deadline: .now() + 2.5) {
            withAnimation {
                self.isPresentingSplash = true
            }
        }
    }
}

#Preview {
    SplashScreen()
}
