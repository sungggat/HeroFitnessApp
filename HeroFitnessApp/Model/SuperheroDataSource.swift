//
//  SuperheroDataSource.swift
//  HeroFitnessApp
//
//  Created by Sunggat Aiymbay on 02.08.2018.
//  Copyright © 2018 Sunggat Aiymbay. All rights reserved.
//

import Foundation
import UIKit

class SuperheroDataSource {
    var superheroes: [Superhero]
    init() {
        superheroes = []
        let SuperheroCaptainAmerica = Superhero(name: "CAPTAIN AMERICA", image: #imageLiteral(resourceName: "captainAmerica"), colorOfHero: UIColor.CaptainAmericaBackgroundColor(), speed: 2, strength: 4, fight: 6)
        superheroes.append(SuperheroCaptainAmerica)
        
        let SuperheroBatman = Superhero(name: "BATMAN", image: #imageLiteral(resourceName: "batman"), colorOfHero: UIColor.BatmanBackgroundColor(), speed: 2, strength: 4, fight: 7)
        superheroes.append(SuperheroBatman)
        
        let SuperheroDeadpool = Superhero(name: "DEADPOOL", image: #imageLiteral(resourceName: "deadpool"), colorOfHero: UIColor.DeadpoolBackgroundColor(), speed: 3, strength: 3, fight: 6)
        superheroes.append(SuperheroDeadpool)
        
        let SuperheroThor = Superhero(name: "THOR", image: #imageLiteral(resourceName: "thor"), colorOfHero: UIColor.ThorBackgroundColor(), speed: 7, strength: 7, fight: 4)
        superheroes.append(SuperheroThor)
        
        let SuperheroIronman = Superhero(name: "IRON MAN", image: #imageLiteral(resourceName: "ironman"), colorOfHero: UIColor.IronManBackgroundColor(), speed: 5, strength: 6, fight: 4)
        superheroes.append(SuperheroIronman)
        
        let SuperheroBlackPanther = Superhero(name: "BLACK PANTHER", image: #imageLiteral(resourceName: "blackpanther"), colorOfHero: UIColor.BlackPantherBackgroundColor(), speed: 2, strength: 3, fight: 5)
        superheroes.append(SuperheroBlackPanther)
        
        func getSuperheroesInfo() -> [Superhero] {
            return superheroes
        }
    }
}
