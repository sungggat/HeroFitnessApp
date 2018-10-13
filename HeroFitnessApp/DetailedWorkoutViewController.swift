//
//  DetailedWorkoutViewController.swift
//  HeroFitnessApp
//
//  Created by Sunggat Aiymbay on 06.08.2018.
//  Copyright © 2018 Sunggat Aiymbay. All rights reserved.
//

import UIKit
import XCDYouTubeKit
import AVKit

class DetailedWorkoutViewController: UIViewController {

    @IBOutlet weak var viewOfReps: UIView!
    @IBOutlet weak var typeofrepsLabel: UILabel!
    @IBOutlet weak var doneButton: UIButton!
    @IBOutlet weak var repsTextLabel: UILabel!
    @IBOutlet weak var workoutImageView: UIImageView!
    @IBOutlet weak var workoutTextLabel: UILabel!
    @IBOutlet weak var progressVeiw: UIView!
    @IBOutlet weak var videoPlayImageView: UIImageView!
    

    var pageNumber: Int?
    var workoutNumber: Int = 0
    var seconds = 0
    var timer = Timer()
    var timerIsOn = false
    let manager = WorkoutDataSource()
    var workouts : [Workout] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        doneButton.layer.cornerRadius = 15
        viewOfReps.layer.cornerRadius = 12
        if pageNumber == 0 {
            self.workouts = self.manager.CaptainAmericaWorkoutsCell
        }
        else if pageNumber == 1 {
            self.workouts = self.manager.BatmanWorkoutsCell
        }
        else if pageNumber == 2 {
            self.workouts = self.manager.DeadpoolWorkoutsCell
        }
        else if pageNumber == 3 {
            self.workouts = self.manager.ThorWorkoutsCell
        }
        else if pageNumber == 4 {
            self.workouts = self.manager.IronManWorkoutsCell
        }
        else if pageNumber == 5 {
            self.workouts = self.manager.BlackpantherWorkoutCell
        }
        let tap1 = UITapGestureRecognizer(target: self, action: #selector(tapGesture1))
        videoPlayImageView.addGestureRecognizer(tap1)
        videoPlayImageView.isUserInteractionEnabled = true
        
        updateWorkout()
        updateUI()
    
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func updateUI() {
        
        progressVeiw.frame.size.width = (view.frame.size.width / CGFloat(workouts.count)) * CGFloat(workoutNumber + 1)
        
    }
    @objc func updateTimer() {
        if seconds > 1 {
            seconds -= 1
            repsTextLabel.text = "\(seconds)"
            doneButton.isHidden = true
        }
        else {
            doneButton.isHidden = false
            doneButton.setTitle("Workout Done", for: .normal)
            repsTextLabel.text = ""
            typeofrepsLabel.text = ""
        }
        
    }
    func updateWorkout() {
       
        if workoutNumber <= 7 {
            if workouts[workoutNumber].type == true {
                doneButton.setTitle("START", for: .normal)
                typeofrepsLabel.text = "SECONDS"
                seconds = workouts[workoutNumber].reps
            }
            repsTextLabel.text = "\(workouts[workoutNumber].reps)"
            workoutImageView.image = workouts[workoutNumber].largeImage
            workoutTextLabel.text = workouts[workoutNumber].workoutText
            if workouts[workoutNumber].videoExist == false {
                videoPlayImageView.isHidden = true
            }
            else {
                videoPlayImageView.isHidden = false
            }
            updateUI()
        }
        
    }

    @IBAction func doneButton(_ sender: UIButton) {
        workoutNumber += 1
        if workoutNumber <= 8 {
            if workouts[workoutNumber - 1].type == true {
                timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(updateTimer), userInfo: nil, repeats: true)
            }
        }
        else {
            if workoutNumber == 9 {
                performSegue(withIdentifier: "segue", sender: self)
            }
        }
        updateWorkout()
    }
    func StartVideo() {
        
        let ViodeoViewController = AVPlayerViewController()
        self.present(ViodeoViewController, animated: true, completion: nil)
        
        XCDYouTubeClient.default().getVideoWithIdentifier(workouts[workoutNumber].videoLink) { (video: XCDYouTubeVideo?, error: Error?) in
            if let streamURL = video?.streamURLs[XCDYouTubeVideoQuality.HD720.rawValue] {
                ViodeoViewController.player = AVPlayer(url: streamURL)
            } else {
                self.dismiss(animated: true, completion: nil)
            }
        }
    }
    @objc func tapGesture1() {
        
        StartVideo()
    }
    
    
//    func getVideo(videoCode: String) {
//        let url = URL(string: "https://www.youtube.com/embed/\(videoCode)")
//        videoLinkButton.
//        
//    }
    
    
}
