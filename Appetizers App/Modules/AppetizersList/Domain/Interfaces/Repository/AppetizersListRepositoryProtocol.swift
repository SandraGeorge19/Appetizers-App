//
//  AppetizersListRepositoryProtocol.swift
//  Appetizers App
//
//  Created by Developer on 12/06/2024.
//

import Foundation
import Combine

protocol AppetizersListRepositoryProtocol {
    func getAppetizers() -> AnyPublisher<AppetizersResponse, AppetizerError>
}
