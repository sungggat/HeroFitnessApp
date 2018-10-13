//
//  Workout.swift
//  HeroFitnessApp
//
//  Created by Sunggat Aiymbay on 01.08.2018.
//  Copyright © 2018 Sunggat Aiymbay. All rights reserved.
//

import Foundation
import UIKit

class Workout {
    var smallImage: UIImage
    var largeImage: UIImage
    var workoutText: String
    var reps : Int
    var type: Bool
    var videoLink: String
    var videoExist: Bool
    
    init(smallImage: UIImage, largeImage: UIImage, workoutText: String, reps: Int, type: Bool, videoLink: String, videoExist: Bool) {
        self.smallImage = smallImage
        self.largeImage = largeImage
        self.workoutText = workoutText
        self.reps = reps
        self.type = type
        self.videoLink = videoLink
        self.videoExist = videoExist
    }
}
