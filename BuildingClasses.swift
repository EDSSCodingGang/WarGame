//
//  BuildingClasses.swift
//  WarGame
//
//  Created by Eric L on 2020-03-04.
//  Copyright © 2020 Eric L. All rights reserved.
//

import Foundation

class Building {
    var maxHealth: Int
    var currentHealth: Int
    var defense: Int
    var cost: [String:Int]
    var side: String
    var position: [Int]
    
    init (maxHealth: Int, currentHealth: Int, defense: Int, cost: [Int], side: String, position: [Int]) {
        self.maxHealth = maxHealth
        self.currentHealth = currentHealth
        self.defense = defense
        self.cost = ["Money" : cost[0], "Steel" : cost[1], "Oil": cost[2]]
        self.side = side
        self.position = position
    }
    
}

class AttackBuilding: Building {
    var attack: Int
    var minRange: Int
    var maxRange: Int
    var isDone: Bool
    
    init(maxHealth: Int, currentHealth: Int, defense: Int, cost: [Int], side: String, position: [Int], attack: Int, minRange: Int, maxRange: Int, isDone: Bool) {
        self.attack = attack
        self.minRange = minRange
        self.maxRange = maxRange
        self.isDone = isDone
        super.init(maxHealth: maxHealth, currentHealth: currentHealth, defense: defense, cost: cost, side: side, position: position)
        
        //Methods
        
        //Use Attack Func From Units
    }
    
    class UnitBuilding: Building {
        var type: String
       
        init(maxHealth: Int, currentHealth: Int, defense: Int, cost: [Int], side: String, position: [Int], type: String) {
            self.type = type
            super.init(maxHealth: maxHealth, currentHealth: currentHealth, defense: defense, cost: cost, side: side, position: position)
        }
        //Switch Statements:
        //Use Switch Statements to see what type of unitBuilding it is, "Barracks", "Factory", "Air Base" to output what units are avaliable to choose from.
        func unitProduce() {
            switch type {
            case "Barracks":
                print("This is placeholder")
            case "Factory":
                print("This is placeholder")
            case "Air Base":
                print("This is placeholder")
            default:
                print("HELP EM")
            }
        }
        
        
        //Methods
        
        //Produce Unit --> adds unit to a square beside the building based on user input of both type of unit and square to be placed
    }
    
    class ResourceBuilding: Building {
        var amount: Int
        var productionType: String
        
        init(maxHealth: Int, currentHealth: Int, defense: Int, cost: [Int], side: String, position: [Int], amount: Int, productionType: String) {
            self.amount = amount
            self.productionType = productionType
            super.init(maxHealth: maxHealth, currentHealth: currentHealth, defense: defense, cost: cost, side: side, position: position)
        }
        //Methods
        
        //Function will call at start of every turn, giving the player production amount of resources of productionType to their total
        func resourceUpdate(player:playerControl){
            switch(productionType){
            case "Money":
                player.totalMoney += amount
            case "Steel":
                player.totalSteel += amount
            case("Oil"):
                player.totalOil += amount
            default:
                print("HELP")
            }
        }
    }
    class Shelter: Building {
        var isOccupied: Bool
        
        init(maxHealth: Int, currentHealth: Int, defense: Int, cost: [Int], side: String, position: [Int], isOccupied: Bool) {
            self.isOccupied = false
            super.init(maxHealth: maxHealth, currentHealth: currentHealth, defense: defense, cost: cost, side: side, position: position)
            
            //Unit inside bunker is not attacked
        }
    }
}
