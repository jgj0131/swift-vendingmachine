//
//  UnitTestSoftDrink.swift
//  VendingMachineUnitTest
//
//  Created by 윤지영 on 13/12/2018.
//  Copyright © 2018 JK. All rights reserved.
//

import XCTest

class UnitTestSoftDrink: XCTestCase {
    private var pepsi: Pepsi!
    private var sprite: Sprite!
    private var soda: SoftDrink!

    override func setUp() {
        self.pepsi = Pepsi(
            volume: 500,
            price: 1800,
            dateOfManufacture: Date(timeIntervalSinceNow: -40*86400),
            package: .plastic)
        self.sprite = Sprite(
            volume: 250,
            price: 1200,
            dateOfManufacture: Date(timeIntervalSinceNow: -30*86400),
            package: .can)
        self.soda = SoftDrink(
            brand: "롯데",
            name: "밀키스",
            volume: 340,
            price: 1300,
            dateOfManufacture: Date(timeIntervalSinceNow: -20*86400),
            package: .plastic)
    }

    func testClassSoftDrinkHasRightCategory() {
        XCTAssertEqual(soda.group, BeverageCategory.softDrink)
    }

    func testClassSoftDrinkAndOneSubClassOfSoftDrinkHaveSameGroup() {
        XCTAssertEqual(pepsi.group, soda.group)
    }

    func testClassSoftDrinkAndAnotherSubClassOfSoftDrinkHaveSameGroup() {
        XCTAssertEqual(sprite.group, soda.group)
    }

    func testSubClassesOfSoftDrinkHaveSameGroup() {
        XCTAssertEqual(pepsi.group, sprite.group)
    }

}