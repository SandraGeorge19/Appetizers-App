//
//  AppetizersListRepositoryProtocol.swift
//  Appetizers App
//
//  Created by Developer on 12/06/2024.
//

import Foundation

protocol AppetizersListRepositoryProtocol {
    func getAppetizers() async throws -> AppetizersResponse
}
