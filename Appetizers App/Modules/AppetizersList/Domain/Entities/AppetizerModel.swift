//
//  AppetizerModel.swift
//  Appetizers App
//
//  Created by Developer on 12/06/2024.
//

import Foundation

struct AppetizerModel: Codable, Identifiable {
    let id: Int
    let appetizerName: String
    let description: String
    let imageUrl: String
    let price: Double
    let protein: Int
    let carbs: Int
    let calories: Int
    
    enum CodingKeys: String, CodingKey {
        case id
        case appetizerName = "name"
        case description
        case imageUrl = "imageURL"
        case price
        case protein
        case carbs
        case calories
    }
}
