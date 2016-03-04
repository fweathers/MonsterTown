//
//  main.swift
//  MonsterTown
//
//  Created by Felicia Weathers on 2/9/16.
//  Copyright © 2016 Felicia Weathers. All rights reserved.
//

import Foundation

var myTown = Town()
myTown.changePopulation(-5412)

let fredTheZombie = Zombie()
fredTheZombie.town = myTown
fredTheZombie.terrorizeTown()
fredTheZombie.town?.printTownDescription()
fredTheZombie.changeName("Fred the Zombie", walksWithLimp: true)
fredTheZombie.town?.printTownDescription()
