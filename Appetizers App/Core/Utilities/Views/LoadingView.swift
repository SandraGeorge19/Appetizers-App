//
//  LoadingView.swift
//  Appetizers App
//
//  Created by Developer on 16/06/2024.
//

import SwiftUI

struct ActivityIndicator: UIViewRepresentable {
    
    func makeUIView(context: Context) -> UIActivityIndicatorView {
        let activityIndicatorView = UIActivityIndicatorView(style: .large)
        activityIndicatorView.color = .brandPrimary
        activityIndicatorView.startAnimating()
        return activityIndicatorView
    }
    
    func updateUIView(_ uiView: UIActivityIndicatorView, context: Context) { }
    
}

struct LoadingView: View {
    var body: some View {
        ZStack {
            Color(.systemBackground)
                .ignoresSafeArea(.all)
//            ActivityIndicator()
            ProgressView()
                .progressViewStyle(CircularProgressViewStyle()).tint(.brandPrimary)
                .scaleEffect(2)
        }
    }
}

#Preview {
    LoadingView()
}
