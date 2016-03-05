//
//  Zombie.swift
//  MonsterTown
//
//  Created by Felicia Weathers on 2/10/16.
//  Copyright © 2016 Felicia Weathers. All rights reserved.
//

import Foundation

class Zombie: Monster {
    override class var spookyNoise: String {
        return "Brains..."
    }
    
    var walksWithLimp = true
    internal private(set) var isFallingApart = false
    
    final override func terrorizeTown() {
        if !isFallingApart {
            town?.changePopulation(-10)
        }
        super.terrorizeTown()
    }
    
    func changeName(name: String, walksWithLimp: Bool) {
        self.name = name
        self.walksWithLimp = walksWithLimp
    }
}