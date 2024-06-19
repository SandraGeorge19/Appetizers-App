//
//  OrderView.swift
//  Appetizers App
//
//  Created by Developer on 12/06/2024.
//

import SwiftUI

struct OrderView: View {
    @EnvironmentObject var viewModel: OrderViewModel
    
    var body: some View {
        NavigationView {
            ZStack {
                VStack {
                    List {
                        ForEach(viewModel.orderItems) { appetizer in
                            AppetizersListViewCell(appetizer: appetizer)
                        }.onDelete(perform: viewModel.deleteItem)
                            .listRowSeparator(.hidden)
                    }.listStyle(.plain)
                    MainButtonView(title: "$\(viewModel.totalPrice, specifier: "%0.02f") - Place Order") {
                         
                     }
                }
                if viewModel.orderItems.isEmpty {
                    EmptyStateView(imageName: "empty-order", message: "You have no items in your order.")
                }
              }.navigationTitle("🛍️ Orders")
        }
        
    }
}

#Preview {
    OrderView()
        .environmentObject(OrderViewModel())
}
