//
//  Coke.swift
//  VendingMachine
//
//  Created by jang gukjin on 05/07/2019.
//  Copyright © 2019 JK. All rights reserved.
//

import Foundation

class Coke: Soda {
    static let sugarFree: Bool = false
    
    init(calorie: Int){
        super.init(capacity: 500, price: 1700, name: "콜라", stringDate: "20200326", calorie: calorie)
    }
}