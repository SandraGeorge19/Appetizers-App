//
//  SaveUserUseCaseProtocol.swift
//  Appetizers App
//
//  Created by Developer on 17/06/2024.
//

import Foundation

protocol SaveUserUseCaseProtocol {
    var alertItem: AlertItem? { get }
    func execute(using user: User)
}
