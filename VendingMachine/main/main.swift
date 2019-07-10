//
//  main.swift
//  VendingMachine
//
//  Created by JK on 11/10/2017.
//  Copyright © 2017 JK. All rights reserved.
//

import Foundation

func main() {
    var vendingMachine = VendingMachine()
    
    let strawberryMilk = StrawberryMilk(stringDate: "20190630", strawberryContent: 20)
    let chocolateMilk = ChocolateMilk(fattyContent: 1.4)
    let coke = Coke(calorie: 200, sugarFree: false)
    let sprite = Sprite(calorie: 90, lemonContent: 3.5)
    let topCoffee = TOPCoffee(temperature: 70.0, arbicaBeansContent: true)
    let cantataCoffee = CantataCoffee(temperature: 30.0, DripStatus: true)
    
    vendingMachine.stockUp(of: strawberryMilk, count: 3)
    vendingMachine.stockUp(of: chocolateMilk, count: 3)
    vendingMachine.stockUp(of: coke, count: 3)
    vendingMachine.stockUp(of: sprite, count: 3)
    vendingMachine.stockUp(of: topCoffee, count: 3)
    vendingMachine.stockUp(of: cantataCoffee, count: 3)
    
    while true {
        let inputView = InputView(vendingMachine: vendingMachine)
        let input = inputView.readInput(money: vendingMachine.checkBalance())
        if input == ["0"] {
            break
        }
        var workFlow = WorkFlow(vendingMachine: vendingMachine)
        let result = workFlow.selectMenu(of: input)
        OutputView.printResult(of: result.output)
        vendingMachine = result.vendingMachine
    }
}

main()
