//
//  Appetizers_AppApp.swift
//  Appetizers App
//
//  Created by Developer on 12/06/2024.
//

import SwiftUI

@main
struct Appetizers_AppApp: App {
    let viewModel = OrderViewModel()
    var body: some Scene {
        WindowGroup {
            AppetizersTabView()
                .environmentObject(viewModel)
        }
    }
}
