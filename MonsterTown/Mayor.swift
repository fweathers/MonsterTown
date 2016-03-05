//
//  Mayor.swift
//  MonsterTown
//
//  Created by Felicia Weathers on 3/5/16.
//  Copyright © 2016 Felicia Weathers. All rights reserved.
//

import Foundation

struct Mayor {
    private var anxietyLevel = 0
    
    mutating func notifiedOfZombieAttack() {
        print("I'm deeply saddened to hear about this latest tragedy. I promise that my office is looking into the nature of this rash violence.")
        
        anxietyLevel++
        
//        print(anxietyLevel)
    }
}