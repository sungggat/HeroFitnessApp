//
//  WorkoutViewController.swift
//  HeroFitnessApp
//
//  Created by Sunggat Aiymbay on 01.08.2018.
//  Copyright © 2018 Sunggat Aiymbay. All rights reserved.
//

import UIKit

class WorkoutViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    var pageNumber: Int?
    var k : Int?
    var titleText = ""
    
    @IBOutlet weak var startButton: UIButton!
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.workouts.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let workout = self.workouts[indexPath.row] as Workout
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! WorkoutViewCell
        cell.selectionStyle = .none
        cell.preservesSuperviewLayoutMargins = false
        cell.separatorInset = UIEdgeInsets.zero
        cell.layoutMargins = UIEdgeInsets.zero
        cell.layer.cornerRadius = 20.0
        cell.layer.borderWidth = 5.0
        cell.layer.borderColor = UIColor.cellBackgroundColor().cgColor
        //cell.layer.masksToBounds = true
        cell.workoutImageView.image = workout.smallImage
        cell.iconRepsTimeImageView.image = #imageLiteral(resourceName: "repsIcon")
        cell.workoutTitleLabel.text = workout.workoutText
        cell.workoutRepsLabel.text = "\(workout.reps) reps"
        return cell
    }
    
    @IBOutlet weak var tableView: UITableView!
    let manager = WorkoutDataSource()
    var workouts : [Workout] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.tableView.delegate = self
        self.tableView.dataSource = self
        self.tableView.rowHeight = 100.0
        self.tableView.backgroundColor = UIColor.cellBackgroundColor()
        k = pageNumber
        if pageNumber == 0 {
            self.workouts = self.manager.getCaptainAmericaCellWorkOuts()
            titleText = "CAPTAIN AMERICA"
        }
        else if pageNumber == 1 {
            self.workouts = self.manager.getBatmanWorkoutcell()
            titleText = "BATMAN"
        }
        else if pageNumber == 2 {
            self.workouts = self.manager.getDeadpollWorkoutcell()
            titleText = "DEADPOOL"
        }
        else if pageNumber == 3 {
            self.workouts = self.manager.getThorWorkoutcell()
            titleText = "THOR"
        }
        else if pageNumber == 4 {
            self.workouts = self.manager.getIronManWorkoutcell()
            titleText = "IRON MAN"
        }
        else if pageNumber == 5 {
            self.workouts = self.manager.getBlackpantherWorkoutcell()
            titleText = "BLACK PANTHER"
        }
        
    
        self.title = titleText
        self.navigationController?.navigationBar.topItem?.title = ""
        self.navigationController?.navigationBar.tintColor = UIColor.white
    
    }
    
    @IBAction func startButton(_ sender: UIButton) {
        performSegue(withIdentifier: "segue", sender: self)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "segue" {
            let secondController = segue.destination as! DetailedWorkoutViewController
            secondController.pageNumber = k
        }
    }
   
}
