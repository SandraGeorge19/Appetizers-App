//
//  AppetizersListRepository.swift
//  Appetizers App
//
//  Created by Developer on 12/06/2024.
//

import Foundation
import Combine

final class AppetizersListRepository: AppetizersListRepositoryProtocol {
    // MARK: - Properties
    let service: AppetizersListServiceProtocol
    
    // MARK: - Initializer(s)
    init(service: AppetizersListServiceProtocol = AppetizersListService()) {
        self.service = service
    }
    
    // MARK: - Method(s)
    func getAppetizers() -> AnyPublisher<AppetizersResponse, AppetizerError> {
        return service.getAppetizers()
    }
}
