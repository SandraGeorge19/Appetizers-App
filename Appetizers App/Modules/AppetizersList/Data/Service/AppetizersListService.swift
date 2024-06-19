//
//  AppetizersListService.swift
//  Appetizers App
//
//  Created by Developer on 12/06/2024.
//

import Foundation

final class AppetizersListService: AppetizersListServiceProtocol {
    // MARK: - Properties
    var service: NetworkManager
    
    // MARK: - Initializer(s)
    init(service: NetworkManager = NetworkManager.shared) {
        self.service = service
    }
    
    // MARK: - Method(s)
    func getAppetizers() async throws -> AppetizersResponse {
        let url = Constants.baseUrl + Constants.appetizerEndPoint
        return try await service.getResponse(url: url,responseClass: AppetizersResponse.self)
    }
}
