//
//  playerClass.swift
//  WarGame
//
//  Created by Eric L on 2020-03-04.
//  Copyright © 2020 Eric L. All rights reserved.
//

import Foundation

class playerControl {
    var totalMoney: Int
    var totalSteel: Int
    var totalOil: Int
    var turn: Int
    
    init(totalMoney: Int, totalSteel: Int, totalOil: Int, turn: Int) {
        self.totalMoney = totalMoney
        self.totalSteel = totalSteel
        self.totalOil = totalOil
        self.turn = turn
    }
}
