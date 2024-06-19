//
//  Alert.swift
//  Appetizers App
//
//  Created by Developer on 12/06/2024.
//

import SwiftUI

struct AlertItem: Identifiable {
    let id = UUID()
    let title: Text
    let message: Text
    let dismissButton: Alert.Button
}

struct AlertContext {
    static let invalidUrl = AlertItem(title: Text("Server Error"),
                                              message: Text("The URL you made a request with, is Invalid URL."),
                                              dismissButton: .default(Text("Ok")))
    static let invalidData = AlertItem(title: Text("Server Error"),
                                              message: Text("The Data came from request is Invalid Data."),
                                              dismissButton: .default(Text("Ok")))
    static let invalidResponse = AlertItem(title: Text("Server Error"),
                                              message: Text("The Response came from request is Invalid Response."),
                                              dismissButton: .default(Text("Ok")))
    static let unableToComplete = AlertItem(title: Text("Server Error"),
                                              message: Text("Unable to Complete sending Request and getting Response."),
                                              dismissButton: .default(Text("Ok")))
    static let invalidFormInput = AlertItem(title: Text("Invalid Input"),
                                              message: Text("Unable to save data, some of your personal info are invalid. Please enter a valid data"),
                                              dismissButton: .default(Text("Ok")))
    static let invalidEmail = AlertItem(title: Text("Invalid Email"),
                                              message: Text("Unable to save data, Your Email is invalid. Please enter a valid mail"),
                                              dismissButton: .default(Text("Ok")))
    static let accountCreated = AlertItem(title: Text("Account Created"),
                                              message: Text("Account data saved successfuly."),
                                              dismissButton: .default(Text("Ok")))
}
