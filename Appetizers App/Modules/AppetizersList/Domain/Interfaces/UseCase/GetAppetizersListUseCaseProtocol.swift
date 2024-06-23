//
//  GetAppetizersListUseCaseProtocol.swift
//  Appetizers App
//
//  Created by Developer on 12/06/2024.
//

import Foundation
import Combine

protocol GetAppetizersListUseCaseProtocol {
    func execute() -> AnyPublisher<AppetizersResponse, AppetizerError>
}
