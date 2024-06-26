//
//  AppetizersListServiceProtocol.swift
//  Appetizers App
//
//  Created by Developer on 12/06/2024.
//

import Foundation
import Combine

protocol AppetizersListServiceProtocol {
    func getAppetizers() -> AnyPublisher<AppetizersResponse, AppetizerError>
}
