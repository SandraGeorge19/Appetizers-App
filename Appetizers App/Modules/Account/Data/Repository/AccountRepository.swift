//
//  AccountRepository.swift
//  Appetizers App
//
//  Created by Developer on 17/06/2024.
//

import Foundation

final class AccountRepository: AccountRepositoryProtocol {
    
    var service: AccountServiceProtocol
    
    var alertItem: AlertItem? {
        return service.alertItem
    }
    init(service: AccountServiceProtocol = AccountService()) {
        self.service = service
    }
    
    func saveChanges(user: User) {
        service.saveChanges(user: user)
    }
    
    func getUser() -> User? {
        return service.getUser()
    }
    
}
