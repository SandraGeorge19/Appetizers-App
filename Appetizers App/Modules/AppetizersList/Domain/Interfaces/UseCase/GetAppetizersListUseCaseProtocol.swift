//
//  GetAppetizersListUseCaseProtocol.swift
//  Appetizers App
//
//  Created by Developer on 12/06/2024.
//

import Foundation

protocol GetAppetizersListUseCaseProtocol {
    func execute() async throws -> AppetizersResponse
}
