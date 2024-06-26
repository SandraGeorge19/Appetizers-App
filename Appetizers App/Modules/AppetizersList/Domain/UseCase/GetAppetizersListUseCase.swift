//
//  GetAppetizersListUseCase.swift
//  Appetizers App
//
//  Created by Developer on 12/06/2024.
//

import Foundation
import Combine

final class GetAppetizersListUseCase: GetAppetizersListUseCaseProtocol {
    // MARK: - Properties
    let repo: AppetizersListRepositoryProtocol
    
    // MARK: - Initializer(s)
    init(repo: AppetizersListRepositoryProtocol = AppetizersListRepository()) {
        self.repo = repo
    }
    
    // MARK: - Method(s)
    func execute() -> AnyPublisher<AppetizersResponse, AppetizerError> {
        return repo.getAppetizers()
    }
}
