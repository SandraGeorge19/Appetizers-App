//
//  GetUserUseCaseProtocol.swift
//  Appetizers App
//
//  Created by Developer on 17/06/2024.
//

import Foundation

protocol GetUserUseCaseProtocol {
    var alertItem: AlertItem? { get }
    func execute() -> User?
}
