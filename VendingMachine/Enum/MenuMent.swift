//
//  MenuMent.swift
//  VendingMachine
//
//  Created by jang gukjin on 12/07/2019.
//  Copyright © 2019 JK. All rights reserved.
//

import Foundation

enum MenuMent: String {
    case user = """
                1. 금액 추가
                2. 음료 구매
                3. 구매 내역
                4. 뒤로
                >>
                """
    case admin = """
                1. 재고 추가
                2. 재고 제거
                3. 유통기한이 만료된 제품 조회
                4. 뒤로
                >>
                """
    case quit = "종료"
    case error = "범위 안에 있는 숫자를 입력해주세요"

    init(of mode: String) {
        switch mode {
        case "admin", "Admin": self = .admin
        case "user", "User": self = .user
        case "quit", "Quit": self = .quit
        default: self = .error
        }
    }
}
