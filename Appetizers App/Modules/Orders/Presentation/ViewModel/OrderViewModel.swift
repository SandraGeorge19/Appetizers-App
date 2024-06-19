//
//  OrderViewModel.swift
//  Appetizers App
//
//  Created by Developer on 18/06/2024.
//

import SwiftUI

final class OrderViewModel: ObservableObject {
    @Published var orderItems: [AppetizerModel] = []

    var totalPrice: Double {
        orderItems.reduce(0.0) { $0 + $1.price }
    }

    func addToOrder(_ appetizer: AppetizerModel) {
        orderItems.append(appetizer)
    }
    func deleteItem(at offset: IndexSet) {
        orderItems.remove(atOffsets: offset)
    }
}
