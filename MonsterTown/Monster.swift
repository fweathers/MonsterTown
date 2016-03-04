//
//  Monster.swift
//  MonsterTown
//
//  Created by Felicia Weathers on 2/10/16.
//  Copyright © 2016 Felicia Weathers. All rights reserved.
//

import Foundation

class Monster {
    var town: Town?
    var name = "Monster"
    
    func terrorizeTown() {
        if town != nil && town?.population > 0 {
            print("\(name) is terrorizing a town!")
        } else {
            print("\(name) hasn't found a town to terrorizex    yet...")
        }
    }
}