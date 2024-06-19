//
//  AccountViewModelProtocol.swift
//  Appetizers App
//
//  Created by Developer on 17/06/2024.
//

import Foundation

protocol AccountViewModelProtocol: ObservableObject {
    func saveChanges()
    func getUser()
}
