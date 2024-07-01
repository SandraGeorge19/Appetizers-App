//
//  LottieView.swift
//  Appetizers App
//
//  Created by Sandra George on 01/07/2024.
//

import SwiftUI
import Lottie

struct LottieView: UIViewRepresentable {
    let lottieAnimationName: String
    let loopMode: LottieLoopMode
    
    func updateUIView(_ uiView: Lottie.LottieAnimationView, context: Context) {}

    func makeUIView(context: Context) -> Lottie.LottieAnimationView {
        let animationView = LottieAnimationView(name: lottieAnimationName)
        animationView.play()
        animationView.loopMode = loopMode
        animationView.contentMode = .scaleAspectFit
        return animationView
    }
}
