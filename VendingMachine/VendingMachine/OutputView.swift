//
//  OutputView.swift
//  VendingMachine
//
//  Created by moon on 2018. 6. 14..
//  Copyright © 2018년 JK. All rights reserved.
//

import Foundation

protocol AvailableVendingMachine {
    func readBalance() -> String
    func readAllStock() -> [ProductType:Products]
    func readStock(_ productType: ProductType) -> Int
    func buy(_ productType: ProductType) throws -> Beverage
}

struct OutputView {
    
    private var vendingMachine: AvailableVendingMachine
    
    init(_ vendingMachine: AvailableVendingMachine) {
        self.vendingMachine = vendingMachine
    }

    func printBalance() {
        print("현재 투입한 금액이 \(vendingMachine.readBalance())입니다.")
    }

    func printAllStock() {
        print("===========전체 음료 목록==========")
        for (prodcutType, products) in vendingMachine.readAllStock() {
            print("\(prodcutType) \(prodcutType.price)원 (\(products.count)개)")
        }
        print("================================")
    }

    func printBuyableProducts(_ buyableList: [ProductType]) {
        print("=========현재 잔액으로 구매가능한 음료===========")
        for index in buyableList.indices {
            print("\(index + 1)) \(buyableList[index]) \(buyableList[index].price)원, 재고: \(self.vendingMachine.readStock(buyableList[index]))개")
        }
        print("=========================================")
    }

    func printMenu() {
        print("1. 금액추가")
        print("2. 음료구매", terminator: "\n> ")
    }
    
    func printSoldBeverage(_ productType: ProductType) throws {
        let beverage = try self.vendingMachine.buy(productType)
        print("\(beverage.productType!)를 구매하셨습니다. \(productType.price)원을 차감합니다.")
    }
}
