//
//  Sprite.swift
//  VendingMachine
//
//  Created by Elena on 28/03/2019.
//  Copyright © 2019 JK. All rights reserved.
//

import Foundation

class Sprite: Soda {
    
    private let coloring: String
    
    init() {
        self.coloring = "white"
        super.init(brand: "코카콜라", volume: 355, price: 1500, name: "스프라이트", manufacturedDate: Date())
    }
    
    
}