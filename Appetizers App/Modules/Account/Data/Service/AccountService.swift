//
//  AccountService.swift
//  Appetizers App
//
//  Created by Developer on 17/06/2024.
//

import SwiftUI

final class AccountService: AccountServiceProtocol {
    @AppStorage("user") private var userData: Data?
    var alertItem: AlertItem?
    private var user: User
    
    init(user: User = User()) {
        self.user = user
    }
    
    var isValidForm: Bool {
        guard !user.firstName.isEmpty && !user.lastName.isEmpty && !user.email.isEmpty else {
            self.alertItem = AlertContext.invalidFormInput
            return false
        }
        guard user.email.isValidEmail else {
            self.alertItem = AlertContext.invalidEmail
            return false
        }
        return true
    }
    
    func saveChanges(user: User) {
        self.user = user
        guard isValidForm else { return }
        do {
            let data = try JSONEncoder().encode(user)
            userData =  data
            alertItem = AlertContext.accountCreated
        } catch {
            alertItem = AlertContext.invalidData
        }
    }
    func getUser() -> User? {
        guard let userData = userData else { return nil }
        do {
            user = try JSONDecoder().decode(User.self, from: userData)
            return user
        } catch {
            alertItem = AlertContext.invalidData
        }
        return nil
    }
}
