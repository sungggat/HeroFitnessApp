//
//  WorkoutEndedViewController.swift
//  HeroFitnessApp
//
//  Created by Sunggat Aiymbay on 06.08.2018.
//  Copyright © 2018 Sunggat Aiymbay. All rights reserved.
//

import UIKit

class WorkoutEndedViewController: UIViewController {

    @IBOutlet weak var ConfirmButton: UIButton!
    @IBOutlet weak var trophyImageView: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationController?.isNavigationBarHidden = true
            trophyImageView.image = #imageLiteral(resourceName: "trophy")
    
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
   
    @IBAction func ConfirmButton(_ sender: UIButton) {
        
        self.navigationController?.isNavigationBarHidden = false
        self.navigationController?.popToRootViewController(animated: true)
        
    }
    

}
