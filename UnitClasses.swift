//
//  UnitClasses.swift
//  WarGame
//
//  Created by Eric L on 2020-03-04.
//  Copyright © 2020 Eric L. All rights reserved.
//

import Foundation

class Unit {
    var maxHealth: Int
    var currentHealth: Int
    var defense: Int
    var movement: Int
    var attack: Int
    var minRange: Int
    var maxRange: Int
    var hasMoved: Bool
    var postMoveAttack: Bool
    var position: [Int]
    var isAir: Bool
    var isDone: Bool
    var cost: [String:Int]
    var side: String
    
    init(maxHealth: Int, defense: Int, movement: Int, attack: Int, minRange: Int, maxRange: Int, postMoveAttack: Bool, position: [Int], isAir: Bool, cost: [Int], side: String) {
        self.maxHealth = maxHealth
        self.currentHealth = maxHealth
        self.defense = defense
        self.movement = movement
        self.attack = attack
        self.minRange = minRange
        self.maxRange = maxRange
        hasMoved = true
        self.postMoveAttack = postMoveAttack
        self.position = position
        self.isAir = isAir
        isDone = true
        self.cost = ["Money" : cost[0], "Steel" : cost[1], "Oil" : cost[2]]
        self.side = side
    }
    
    //Methods
    
    //Attack --> takes another unit and does combat calculations based off of stats and other unit's stats
    
    func attackFunc(target:Unit) {
        //Placeholder Function
        print("bruh")
        
    }
    
    //Movement --> Changing position based off of inputted position, which will be within movement (range) and is valid.
    
    
}

class medic:Unit {
    
    var healPoints: Int
    
    init(maxHealth: Int, defense: Int, movement: Int, healPoints: Int, minRange: Int, maxRange: Int, postMoveAttack: Bool, position: [Int], isAir: Bool, cost: [Int], side: String) {
        self.healPoints = healPoints
        super.init(maxHealth: maxHealth, defense: defense, movement: movement, attack: 0, minRange: minRange, maxRange: maxRange, postMoveAttack: postMoveAttack, position: position, isAir: isAir, cost: cost, side: side)
    }
    
    override func attackFunc(target:Unit) {
        target.currentHealth += healPoints*currentHealth
        //Add supply when merging
        if target.currentHealth > target.maxHealth {
            target.currentHealth = target.maxHealth
        }
    }
    
}

class sapper:Unit {
    
    override init(maxHealth: Int, defense: Int, movement: Int, attack: Int, minRange: Int, maxRange: Int, postMoveAttack: Bool, position: [Int], isAir: Bool, cost: [Int], side: String) {
        super.init(maxHealth: maxHealth, defense: defense, movement: movement, attack: 0, minRange: minRange, maxRange: maxRange, postMoveAttack: postMoveAttack, position: position, isAir: isAir, cost: cost, side: side)
    }
    
    func makeTrench() {
        
        //Change terrain type to trench, and change the values accordingly
        
    }
    
    func makeMine(UnitList:[Unit]) {
        //Placeholder, make it so that it adds mine to the end of unit list
       var newUnitList = Unit(maxHealth: 1, defense: 0, movement: 0, attack: 50, minRange: 0, maxRange: 0, postMoveAttack: false, position: self.position, isAir: false, cost: [0,0,0], side: self.side)
        
    }
    
    func make(UnitList:[Unit]) {
        //Placeholder, make it so that it adds barbed wire to the end of unit list
       var newUnitList = Unit(maxHealth: 100, defense: 0, movement: 0, attack: 10, minRange: 0, maxRange: 0, postMoveAttack: false, position: self.position, isAir: false, cost: [0,0,0], side: self.side)
        
    }
    
}

