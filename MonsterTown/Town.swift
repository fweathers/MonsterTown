//
//  Town.swift
//  MonsterTown
//
//  Created by Felicia Weathers on 2/9/16.
//  Copyright © 2016 Felicia Weathers. All rights reserved.
//

import Foundation

struct Town {
    static let region = "South"
    var population = 5422 {
        didSet(oldPopulation) {
            //Bronze Challenge
            if (population < oldPopulation) {
                print("The population has changed to \(population) from \(oldPopulation).")
                mayor.notifiedOfZombieAttack()
            }
        }
    }
    
    var mayor = Mayor()

    var numberOfStoplights = 4
    
    enum Size {
        case Small
        case Medium
        case Large
    }
    
    var townSize: Size {
        get {
            switch self.population {
            case 0...10000:
                return Size.Small
                
            case 10001...100000:
                return Size.Medium
                
            default:
                return Size.Large
            }
        }
    }
    
    func printTownDescription(){
        print("Population: \(population); number of stoplights: \(numberOfStoplights)")
    }
    
    mutating func changePopulation(amount: Int) {
        population += amount
    }
}