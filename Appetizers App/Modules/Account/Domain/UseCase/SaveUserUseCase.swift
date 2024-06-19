//
//  SaveUserUseCase.swift
//  Appetizers App
//
//  Created by Developer on 17/06/2024.
//

import Foundation

final class SaveUserUseCase: SaveUserUseCaseProtocol {
    
    let repo: AccountRepositoryProtocol
    
    var alertItem: AlertItem? {
        return repo.alertItem
    }
    
    init(repo: AccountRepositoryProtocol = AccountRepository()) {
        self.repo = repo
    }
    
    func execute(using user: User) {
        repo.saveChanges(user: user)
    }
}
