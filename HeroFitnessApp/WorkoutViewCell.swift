//
//  WorkoutViewCell.swift
//  HeroFitnessApp
//
//  Created by Sunggat Aiymbay on 01.08.2018.
//  Copyright © 2018 Sunggat Aiymbay. All rights reserved.
//

import UIKit

class WorkoutViewCell: UITableViewCell {

    @IBOutlet weak var workoutImageView: UIImageView!
    @IBOutlet weak var workoutTitleLabel: UILabel!
    @IBOutlet weak var workoutRepsLabel: UILabel!
    @IBOutlet weak var iconRepsTimeImageView: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        let mScreenSize = UIScreen.main.bounds
        let mSeparatorHeight = CGFloat(0.0) // Change height of speatator as you want
        let mAddSeparator = UIView.init(frame: CGRect(x: 0, y: self.frame.size.height - mSeparatorHeight, width: mScreenSize.width, height: mSeparatorHeight))
        mAddSeparator.backgroundColor = UIColor.cellBackgroundColor() // Change backgroundColor of separator
        self.addSubview(mAddSeparator)
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
    }

}
