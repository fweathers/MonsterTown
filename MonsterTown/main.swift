//
//  main.swift
//  MonsterTown
//
//  Created by Felicia Weathers on 2/9/16.
//  Copyright © 2016 Felicia Weathers. All rights reserved.
//

import Foundation

var myTown = Town(population: 10000, stoplights: 6)
myTown.printTownDescription()

let ts = myTown.townSize
print(ts)

myTown.changePopulation(1000000)
print("Size: \(myTown.townSize); population: \(myTown.population)")
let fredTheZombie = Zombie(limp: false, fallingApart: false, town: myTown, monsterName: "Fred")
fredTheZombie.terrorizeTown()
fredTheZombie.town?.printTownDescription()
fredTheZombie.changeName("Fred the Zombie", walksWithLimp: false)

print("Victim pool: \(fredTheZombie.victimPool)")
fredTheZombie.victimPool = 500
print("Victim pool: \(fredTheZombie.victimPool)")
print(Zombie.spookyNoise)

if Zombie.isTerrifying {
    print("Run away!")
}
