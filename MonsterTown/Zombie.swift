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
    
    var walksWithLimp: Bool
    private(set) var isFallingApart: Bool
    init(limp: Bool, fallingApart: Bool, town: Town?, monsterName: String){
        walksWithLimp = limp
        isFallingApart = fallingApart
        super.init(town: town, monsterName: monsterName)!
    }
    
    convenience init(limp: Bool, fallingApart: Bool) {
        self.init(limp: limp, fallingApart: fallingApart, town: nil, monsterName: "Fred")
        print("This zombie has a bad knee.")
    }

    convenience required init(town: Town?, monsterName: String) {
        self.init(limp: false, fallingApart: false, town: town, monsterName: monsterName)
    }

    
    convenience required init?(town: Town?, monsterName: String?) {
        self.init(limp: false, fallingApart: false, town: town, monsterName: monsterName!)
    }

    
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
    
    deinit {
        print("Zombie named \(name) is no longer with us.")
    }
}