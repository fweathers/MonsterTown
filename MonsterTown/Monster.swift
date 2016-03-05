//
//  Monster.swift
//  MonsterTown
//
//  Created by Felicia Weathers on 2/10/16.
//  Copyright © 2016 Felicia Weathers. All rights reserved.
//

import Foundation

class Monster {
    static let isTerrifying = true
    class var spookyNoise: String {
        return "Grrr"
    }
    var town: Town?
    var name = "Monster"
    var victimPool: Int {
        get {
            return town?.population ?? 0
        }
        set(newVictimPool) {
            town?.population = newVictimPool
        }
    }
    
    func terrorizeTown() {
        if town != nil && town?.population > 0 {
            print("\(name) is terrorizing a town!")
        } else {
            print("\(name) hasn't found a town to terrorizex    yet...")
        }
    }
}