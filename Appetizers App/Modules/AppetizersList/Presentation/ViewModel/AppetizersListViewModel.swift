//
//  AppetizersListViewModel.swift
//  Appetizers App
//
//  Created by Developer on 12/06/2024.
//

import Foundation

@MainActor final class AppetizersListViewModel: AppetizersListViewModelProtocol {
    // MARK: - Properties
    private let useCase: GetAppetizersListUseCaseProtocol
    @Published var appetizersList: [AppetizerModel] = []
    @Published var alertItem: AlertItem?
    @Published var isLoading = false
    @Published var isShowingDetails = false
    @Published var selectedAppetizer: AppetizerModel?
    
    // MARK: - Initializer(s)
    init(useCase: GetAppetizersListUseCaseProtocol = GetAppetizersListUseCase()) {
        self.useCase = useCase
    }
    
    // MARK: - Method(s)
    func getAppetizers() {
        isLoading = true
        Task {
            do {
                appetizersList = try await useCase.execute().request
                isLoading = false
            } catch {
                if let error = error as? AppetizerError {
                    handleError(error: error)
                } else {
                    alertItem = AlertContext.invalidResponse
                }
                isLoading = false
            }
        }
    }
//    func getAppetizers() {
//        isLoading = true
//        useCase.execute { [weak self] result in
//            guard let self = self else { return }
//            DispatchQueue.main.async {
//                self.isLoading = false
//                switch result {
//                case .success(let response):
//                    self.appetizersList = response.request
//                case .failure(let error):
//                    self.handleError(error: error)
//                }
//            }
//        }
//    }
    private func handleError(error: AppetizerError) {
        switch error {
        case .invalidURL:
            self.alertItem = AlertContext.invalidUrl
        case .invalidResponse:
            self.alertItem = AlertContext.invalidResponse
        case .invalidData:
            self.alertItem = AlertContext.invalidData
        case .unableToComplete:
            self.alertItem = AlertContext.unableToComplete
        }
    }
}
