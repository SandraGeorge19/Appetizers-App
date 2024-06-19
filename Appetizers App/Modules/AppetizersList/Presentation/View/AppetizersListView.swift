//
//  AppetizersListView.swift
//  Appetizers App
//
//  Created by Developer on 12/06/2024.
//

import SwiftUI

struct AppetizersListView: View {
    @ObservedObject var viewModel: AppetizersListViewModel
    
    var body: some View {
        ZStack {
            NavigationView {
                List($viewModel.appetizersList, id: \.id) { appetizer in
                    AppetizersListViewCell(appetizer: appetizer.wrappedValue)
                        .onTapGesture {
                            viewModel.isShowingDetails = true
                            viewModel.selectedAppetizer = appetizer.wrappedValue
                        }
                        .listRowSeparator(.hidden)
                }
                .navigationTitle("🍟 Appetizers")
                .listStyle(.plain)
                .disabled(viewModel.isShowingDetails)
            }.onAppear {
                viewModel.getAppetizers()
            }
            .blur(radius: viewModel.isShowingDetails ? 20 : 0)
            if viewModel.isShowingDetails {
                AppetizerDetailsView(appetizer: viewModel.selectedAppetizer, isShowingDetails: $viewModel.isShowingDetails)
            }
            if viewModel.isLoading {
                LoadingView() 
            }
        }
        .alert(item: $viewModel.alertItem) { alert in
            Alert(title: alert.title,
                  message: alert.message,
                  dismissButton: alert.dismissButton)
        }
    }
}

#Preview {
    AppetizersListView(viewModel: AppetizersListViewModel())
}
