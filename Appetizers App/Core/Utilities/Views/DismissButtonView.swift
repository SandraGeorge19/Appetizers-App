//
//  DismissButtonView.swift
//  Appetizers App
//
//  Created by Developer on 17/06/2024.
//

import SwiftUI

struct DismissButtonView: View {
    @Binding var isShowingDetails: Bool
    var body: some View {
        Button {
            print("dismiss")
            isShowingDetails = false
        } label: {
            ZStack {
                Circle()
                    .frame(width: 35, height: 35)
                    .foregroundStyle(.white )
                    .opacity(0.6 )
                Image(systemName: "xmark")
                    .foregroundStyle(Color(.label))
                    .frame(width: 44, height: 44)
            }
        }
    }
}

#Preview {
    DismissButtonView(isShowingDetails: .constant(true))
}
