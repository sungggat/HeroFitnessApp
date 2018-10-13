//
//  WalkThroughCollectionViewCell.swift
//  HeroFitnessApp
//
//  Created by Sunggat Aiymbay on 30.07.2018.
//  Copyright © 2018 Sunggat Aiymbay. All rights reserved.
//

import UIKit
import UPCarouselFlowLayout
import LinearProgressBar
class WalkThroughCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var imageHeightConstraint: NSLayoutConstraint!
    
    @IBOutlet weak var fightProgressBar: LinearProgressBar!
    @IBOutlet weak var strengthProgressBar: LinearProgressBar!
    @IBOutlet weak var agilityProgressBar: LinearProgressBar!
    @IBOutlet weak var cntView: UIView!
    @IBOutlet weak var HeroImgvWalkthrough: UIImageView!
    @IBOutlet weak var PowerGridUIView: UIView!
    @IBOutlet weak var SuperheroNameLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        //imageHeightConstraint.constant = self.frame.height * 0.6
        
        self.cntView.layer.cornerRadius = 12.0
        self.cntView.layer.shadowColor = UIColor.gray.cgColor
        self.cntView.layer.shadowOpacity = 0.45
        self.cntView.layer.shadowRadius = 1.7
        self.cntView.layer.masksToBounds = true
        self.cntView.layer.shadowOffset = CGSize(width: 0, height: 1.75)
        
    }
}
