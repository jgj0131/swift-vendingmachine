//
//  Cantata.swift
//  VendingMachine
//
//  Created by 윤지영 on 13/12/2018.
//  Copyright © 2018 JK. All rights reserved.
//

import Foundation

class Cantata: Coffee {

    convenience init(name: String, volume: Int, price: Int, dateOfManufacture: Date, ice: Bool) {
        let brand = "롯데칠성"
        self.init(brand: brand, name: name, volume: volume, price: price, dateOfManufacture: dateOfManufacture, ice: ice)
    }

}
