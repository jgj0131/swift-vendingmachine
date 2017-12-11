//
//  Beverage.swift
//  VendingMachine
//
//  Created by TaeHyeonLee on 2017. 12. 7..
//  Copyright © 2017 ChocOZerO. All rights reserved.
//

import Foundation

class Beverage: CustomStringConvertible {
    private let brand: String
    private let weight: Int
    private let price: Int
    private let name: String
    private let dateOfManufacture: Date

    init(brand: String, weight: Int, price: Int, name: String) {
        self.brand = brand
        self.weight = weight
        self.price = price
        self.name = name
        self.dateOfManufacture = Date()
    }

    var description: String {
        return "\(brand), \(weight)ml, \(price)원, \(name), \(getStringFromDate(date: dateOfManufacture))"
    }

    private func getStringFromDate(date: Date) -> String {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "yyyyMMdd"
        return dateFormatter.string(from: date)
    }

}