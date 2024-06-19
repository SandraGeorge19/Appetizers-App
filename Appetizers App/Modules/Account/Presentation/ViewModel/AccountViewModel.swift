//
//  AccountViewModel.swift
//  Appetizers App
//
//  Created by Developer on 17/06/2024.
//

import SwiftUI

final class AccountViewModel: AccountViewModelProtocol {
    
    private let saveUserUseCase: SaveUserUseCaseProtocol
    private let getUserUseCase: GetUserUseCaseProtocol
    @Published var user = User()
    @Published var alertItem: AlertItem?
    @Published var dateRange = Date().oneHundredTenYearsAgo...Date().eighteenYearsAgo
    
    init(
        saveUserUseCase: SaveUserUseCaseProtocol = SaveUserUseCase(),
        getUserUseCase: GetUserUseCaseProtocol = GetUserUseCase()
    ) {
        self.saveUserUseCase = saveUserUseCase
        self.getUserUseCase = getUserUseCase
    }
    
    
    func saveChanges() {
        saveUserUseCase.execute(using: user)
        alertItem = saveUserUseCase.alertItem
    }
    func getUser() {
        self.user = getUserUseCase.execute() ?? User()
        alertItem = getUserUseCase.alertItem
    }
    
}
