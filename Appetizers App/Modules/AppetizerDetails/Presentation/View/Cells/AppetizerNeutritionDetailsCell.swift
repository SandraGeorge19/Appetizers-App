//
//  AppetizerNeutritionDetailsCell.swift
//  Appetizers App
//
//  Created by Developer on 17/06/2024.
//

import SwiftUI

struct AppetizerNeutritionDetailsCell: View {
    let cellTitle: String
    let cellSubtitle: String
    var body: some View {
        VStack(spacing: 5) {
            Text(cellTitle)
                .font(.system(size: 14, weight: .bold))
            Text(cellSubtitle)
                .font(.system(size: 18, weight: .semibold))
                .foregroundStyle(.secondary)
                .italic()
        }
    }
}

#Preview {
    AppetizerNeutritionDetailsCell(cellTitle: "Calories", cellSubtitle: "999")
}
