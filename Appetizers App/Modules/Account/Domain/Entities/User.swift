//
//  User.swift
//  Appetizers App
//
//  Created by Developer on 17/06/2024.
//

import Foundation

struct User: Codable {
    var firstName: String       = ""
    var lastName: String        = ""
    var email: String           = ""
    var birthday: Date          = Date()
    var extraNapkin: Bool       = false
    var frequentRefills: Bool   = false
}
