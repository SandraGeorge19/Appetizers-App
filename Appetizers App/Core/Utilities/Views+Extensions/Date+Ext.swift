//
//  Date+Ext.swift
//  Appetizers App
//
//  Created by Developer on 17/06/2024.
//

import Foundation

extension Date {
    
    var eighteenYearsAgo: Date {
        Calendar.current.date(byAdding: .year, value: -18, to: Date()) ?? Date()
    }
    
    
    var oneHundredTenYearsAgo: Date {
        Calendar.current.date(byAdding: .year, value: -110, to: Date()) ?? Date()
    }
}
