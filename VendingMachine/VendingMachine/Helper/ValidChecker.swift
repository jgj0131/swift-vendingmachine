//
//  ValidCheck.swift
//  VendingMachine
//
//  Created by 조재흥 on 18. 12. 21..
//  Copyright © 2018 JK. All rights reserved.
//

import Foundation

struct ValidChecker {
    static func checkInput(string: String) -> Bool {
        return checkInputOfInsertMoney(string: string) || checkInputOfPurchaseBeverage(string: string)
    }
    
    static private func checkInputOfInsertMoney(string: String) -> Bool {
        return string.range(of: "^1 (\\d)+$", options: .regularExpression) != nil
    }
    
    static private func checkInputOfPurchaseBeverage(string: String) -> Bool {
        return string.range(of: "^2 (\\d)+$", options: .regularExpression) != nil
    }
}

