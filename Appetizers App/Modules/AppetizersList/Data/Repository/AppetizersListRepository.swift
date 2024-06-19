//
//  AppetizersListRepository.swift
//  Appetizers App
//
//  Created by Developer on 12/06/2024.
//

import Foundation

final class AppetizersListRepository: AppetizersListRepositoryProtocol {
    // MARK: - Properties
    let service: AppetizersListServiceProtocol
    
    // MARK: - Initializer(s)
    init(service: AppetizersListServiceProtocol = AppetizersListService()) {
        self.service = service
    }
    
    // MARK: - Method(s)
    func getAppetizers() async throws -> AppetizersResponse {
        return try await service.getAppetizers()
    }
}
