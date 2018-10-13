//
//  File.swift
//  HeroFitnessApp
//
//  Created by Sunggat Aiymbay on 01.08.2018.
//  Copyright © 2018 Sunggat Aiymbay. All rights reserved.
//

import Foundation
import UIKit

class Superhero {
    var name: String
    var image: UIImage
    var colorOfHero: UIColor
    var speed: Int
    var strength: Int
    var fight: Int
    
    init(name: String, image: UIImage, colorOfHero: UIColor, speed: Int, strength: Int, fight: Int) {
        self.name = name
        self.image = image
        self.colorOfHero = colorOfHero
        self.speed = speed
        self.strength = strength
        self.fight = fight
    }
}
