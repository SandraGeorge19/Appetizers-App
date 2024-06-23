//
//  AppetizersListService.swift
//  Appetizers App
//
//  Created by Developer on 12/06/2024.
//

import Foundation
import Combine

final class AppetizersListService: AppetizersListServiceProtocol {
    // MARK: - Properties
    var service: NetworkManager
    
    // MARK: - Initializer(s)
    init(service: NetworkManager = NetworkManager.shared) {
        self.service = service
    }
    
    // MARK: - Method(s)
    func getAppetizers() -> AnyPublisher<AppetizersResponse, AppetizerError> {
        let url = Constants.baseUrl + Constants.appetizerEndPoint
        return service.getResponse(url: url,responseClass: AppetizersResponse.self)
    }
}
