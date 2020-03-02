//
//  main.swift
//  Class Files
//
//  Created by Eric L on 2020-02-24.
//  Edited by Eric L on 2020-03-02
//  Copyright © 2020 Eric L. All rights reserved.
//
import Foundation



class Unit {
    var maxHealth: Int32
    var currentHealth: Int32
    var defense: Int32
    var movement: Int8
    var attack: Int32
    var minRange: Int8
    var maxRange: Int8
    var hasMoved: Bool
    var postMoveAttack: Bool
    var position: [Int8]
    var isAir: Bool
    var isDone: Bool
    var cost: [String:Int32]
    var side: String
    
    init(maxHealth: Int32, defense: Int32, movement: Int8, attack: Int32, minRange: Int8, maxRange: Int8, postMoveAttack: Bool, position: [Int8], isAir: Bool, cost: [Int32], side: String) {
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
    
    var healPoints: Int32
    
    init(maxHealth: Int32, defense: Int32, movement: Int8, healPoints: Int32, minRange: Int8, maxRange: Int8, postMoveAttack: Bool, position: [Int8], isAir: Bool, cost: [Int32], side: String) {
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
    
    override init(maxHealth: Int32, defense: Int32, movement: Int8, attack: Int32, minRange: Int8, maxRange: Int8, postMoveAttack: Bool, position: [Int8], isAir: Bool, cost: [Int32], side: String) {
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

class Building {
    var maxHealth: Int32
    var currentHealth: Int32
    var defense: Int32
    var cost: [String:Int32]
    var side: String
    var position: [Int8]
    
    init (maxHealth: Int32, currentHealth: Int32, defense: Int32, cost: [Int32], side: String, position: [Int8]) {
        self.maxHealth = maxHealth
        self.currentHealth = currentHealth
        self.defense = defense
        self.cost = ["Money" : cost[0], "Steel" : cost[1], "Oil": cost[2]]
        self.side = side
        self.position = position
    }
    
}

class AttackBuilding: Building {
    var attack: Int32
    var minRange: Int8
    var maxRange: Int8
    var isDone: Bool
    
    init(maxHealth: Int32, currentHealth: Int32, defense: Int32, cost: [Int32], side: String, position: [Int8], attack: Int32, minRange: Int8, maxRange: Int8, isDone: Bool) {
        self.attack = attack
        self.minRange = minRange
        self.maxRange = maxRange
        self.isDone = isDone
        super.init(maxHealth: maxHealth, currentHealth: currentHealth, defense: defense, cost: cost, side: side, position: position)
    }
    
}



