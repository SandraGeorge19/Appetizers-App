//
//  ContentView.swift
//  Appetizers App
//
//  Created by Developer on 12/06/2024.
//

import SwiftUI

struct AppetizersTabView: View {
    @EnvironmentObject var orderViewModel: OrderViewModel
    
    var body: some View {
        TabView {
            AppetizersListView(viewModel: AppetizersListViewModel())
                .tabItem {
                    Label("Home", systemImage: "house")
                }
            AccountView(viewModel: AccountViewModel())
                .tabItem {
                    Label("Account", systemImage: "person")
                }
            OrderView()
                .tabItem {
                    Label("Orders", systemImage: "bag")
                }.badge(orderViewModel.orderItems.count)
        }.tint(.brandPrimary)
    }
}

#Preview {
    AppetizersTabView()
        .environmentObject(OrderViewModel())
}
