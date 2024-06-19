//
//  AppetizersResponse.swift
//  Appetizers App
//
//  Created by Developer on 12/06/2024.
//

import Foundation

struct AppetizersResponse: Codable {
    let request: [AppetizerModel]
}

struct MockData {
    static let sampleModel = AppetizerModel(id: 0001,
                                            appetizerName: "Appetizers",
                                            description: "This is description",
                                            imageUrl: "",
                                            price: 99.9,
                                            protein: 93,
                                            carbs: 97,
                                            calories: 95)
    static var sampleModelList = [sampleModel, sampleModel, sampleModel]
}
