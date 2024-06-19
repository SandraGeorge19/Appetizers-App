//
//  AccountServiceProtocol.swift
//  Appetizers App
//
//  Created by Developer on 17/06/2024.
//

import Foundation

protocol AccountServiceProtocol {
    var alertItem: AlertItem? { get }
    func saveChanges(user: User)
    func getUser() -> User?
}
