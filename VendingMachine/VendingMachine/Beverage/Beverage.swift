//
//  Beverage.swift
//  VendingMachine
//
//  Created by 윤지영 on 11/12/2018.
//  Copyright © 2018 JK. All rights reserved.
//

import Foundation

class Beverage: NSObject {
    private let brand: String
    private let name: String
    private let volume: Int
    private let price: Int
    private let dateOfManufacture: Date

    init(brand: String, name: String, volume: Int, price: Int, dateOfManufacture: Date) {
        self.brand = brand
        self.name = name
        self.volume = volume
        self.price = price
        self.dateOfManufacture = dateOfManufacture
    }

    override var description: String {
        return "\(name) \(price)원"
    }

    override var className: String {
        return String(describing: type(of: self))
    }

    func isBuyable(for cash: Int) -> Bool {
        return price <= cash
    }

    func subtractPrice(from balance: Int) -> Int {
        return balance - price
    }

}