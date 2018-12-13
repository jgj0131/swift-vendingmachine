//
//  Date.swift
//  VendingMachine
//
//  Created by 윤지영 on 13/12/2018.
//  Copyright © 2018 JK. All rights reserved.
//

import Foundation

extension Date {

    func addingDayInterval(_ days: Double) -> Date {
        let secondsOfADay: Double = 86400
        return self.addingTimeInterval(secondsOfADay * days)
    }

}