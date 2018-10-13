//
//  WorkoutDataSource.swift
//  HeroFitnessApp
//
//  Created by Sunggat Aiymbay on 01.08.2018.
//  Copyright © 2018 Sunggat Aiymbay. All rights reserved.
//

import Foundation

class WorkoutDataSource {
    var CaptainAmericaWorkoutsCell: [Workout]
    var BlackpantherWorkoutCell: [Workout]
    var DeadpoolWorkoutsCell: [Workout]
    var BatmanWorkoutsCell: [Workout]
    var ThorWorkoutsCell: [Workout]
    var IronManWorkoutsCell: [Workout]
    init() {
        
        CaptainAmericaWorkoutsCell = []
        CaptainAmericaWorkoutsCell.append(Workout(smallImage: #imageLiteral(resourceName: "solojumpkneetucks"), largeImage: #imageLiteral(resourceName: "jumpkneetucks"), workoutText: "Knee tuck jumps", reps: 12, type: false, videoLink: "ArZXCfbjxWs", videoExist: true))
        CaptainAmericaWorkoutsCell.append(Workout(smallImage: #imageLiteral(resourceName: "solositups"), largeImage: #imageLiteral(resourceName: "situps"), workoutText: "Sit-ups", reps: 15, type: false, videoLink: "5bOjqyL0PGE", videoExist: true))
        CaptainAmericaWorkoutsCell.append(Workout(smallImage: #imageLiteral(resourceName: "solopunches"), largeImage: #imageLiteral(resourceName: "punches"), workoutText: "Punches", reps: 50, type: false, videoLink: "M_4Vt5lfEUE", videoExist: true))
        CaptainAmericaWorkoutsCell.append(Workout(smallImage: #imageLiteral(resourceName: "solokneestrike"), largeImage: #imageLiteral(resourceName: "kneestrike"), workoutText: "Knee strike", reps: 20, type: false, videoLink: "RBiqNyxcnco", videoExist: true))
        CaptainAmericaWorkoutsCell.append(Workout(smallImage: #imageLiteral(resourceName: "solobuttups"), largeImage: #imageLiteral(resourceName: "buttups"), workoutText: "Butt-ups", reps: 15, type: false, videoLink: "fKbwSN6hwxw", videoExist: true))
        CaptainAmericaWorkoutsCell.append(Workout(smallImage: #imageLiteral(resourceName: "solopushups"), largeImage: #imageLiteral(resourceName: "pushups"), workoutText: "Push-ups", reps: 12, type: false, videoLink: "v9LABVJzv8A", videoExist: true))
        CaptainAmericaWorkoutsCell.append(Workout(smallImage: #imageLiteral(resourceName: "soloelbowstrike"), largeImage: #imageLiteral(resourceName: "elbowstrike"), workoutText: "Elbow strike", reps: 20, type: false, videoLink: "ujppQiig9CU", videoExist: true))
        CaptainAmericaWorkoutsCell.append(Workout(smallImage: #imageLiteral(resourceName: "run"), largeImage: #imageLiteral(resourceName: "run"), workoutText: "Run on the spot", reps: 30, type: true, videoLink: "", videoExist: false))
        
        DeadpoolWorkoutsCell = []
        DeadpoolWorkoutsCell.append(Workout(smallImage: #imageLiteral(resourceName: "solojumpkneetucks"), largeImage: #imageLiteral(resourceName: "jumpkneetucks"), workoutText: "Knee tuck jumps", reps: 10, type: false, videoLink: "ArZXCfbjxWs", videoExist: true))
        DeadpoolWorkoutsCell.append(Workout(smallImage: #imageLiteral(resourceName: "soloaltarmlegraises"), largeImage: #imageLiteral(resourceName: "altarmlegraises"), workoutText: "Alt arm/leg raises", reps: 12, type: false, videoLink: "DFk3yGZv62U", videoExist: true))
        DeadpoolWorkoutsCell.append(Workout(smallImage: #imageLiteral(resourceName: "solopunches"), largeImage: #imageLiteral(resourceName: "punches"), workoutText: "Punches", reps: 30, type: false, videoLink: "M_4Vt5lfEUE", videoExist: true))
        DeadpoolWorkoutsCell.append(Workout(smallImage: #imageLiteral(resourceName: "solopushups"), largeImage: #imageLiteral(resourceName: "pushups"), workoutText: "Push-ups", reps: 12, type: false, videoLink: "v9LABVJzv8A", videoExist: true))
        DeadpoolWorkoutsCell.append(Workout(smallImage: #imageLiteral(resourceName: "solokneestrike"), largeImage: #imageLiteral(resourceName: "kneestrike"), workoutText: "Knee strike", reps: 20, type: false, videoLink: "RBiqNyxcnco", videoExist: true))
        DeadpoolWorkoutsCell.append(Workout(smallImage: #imageLiteral(resourceName: "solositups"), largeImage: #imageLiteral(resourceName: "situps"), workoutText: "Sit-ups", reps: 10, type: false, videoLink: "5bOjqyL0PGE", videoExist: true))
        DeadpoolWorkoutsCell.append(Workout(smallImage: #imageLiteral(resourceName: "soloelbowstrike"), largeImage: #imageLiteral(resourceName: "elbowstrike"), workoutText: "Elbow strike", reps: 20, type: false, videoLink: "ujppQiig9CU", videoExist: true))
        DeadpoolWorkoutsCell.append(Workout(smallImage: #imageLiteral(resourceName: "elbowplank"), largeImage: #imageLiteral(resourceName: "elbowplank"), workoutText: "Elbow plank", reps: 30, type: true, videoLink: "", videoExist: false))
        
        BlackpantherWorkoutCell = []
        BlackpantherWorkoutCell.append(Workout(smallImage: #imageLiteral(resourceName: "solopushups"), largeImage: #imageLiteral(resourceName: "pushups"), workoutText: "Push-ups", reps: 12, type: false, videoLink: "v9LABVJzv8A", videoExist: true))
        BlackpantherWorkoutCell.append(Workout(smallImage: #imageLiteral(resourceName: "soloslowclimbers"), largeImage: #imageLiteral(resourceName: "slowclimbers"), workoutText: "Slow climbers", reps: 12,  type: false, videoLink: "WixPjH4Y5tw", videoExist: true))
        BlackpantherWorkoutCell.append(Workout(smallImage: #imageLiteral(resourceName: "solopunches"), largeImage: #imageLiteral(resourceName: "punches"), workoutText: "Punches", reps: 40, type: false, videoLink: "M_4Vt5lfEUE", videoExist: true))
        BlackpantherWorkoutCell.append(Workout(smallImage: #imageLiteral(resourceName: "solositouts"), largeImage: #imageLiteral(resourceName: "sitouts"), workoutText: "Sit-outs", reps: 12, type: false, videoLink: "RvDPD_hWX6E", videoExist: true))
        BlackpantherWorkoutCell.append(Workout(smallImage: #imageLiteral(resourceName: "solosideplankcrunches"), largeImage: #imageLiteral(resourceName: "sideplankcrunches"), workoutText: "Side plank crunches", reps: 12, type: false, videoLink: "ArZXCfbjxWs", videoExist: false))
        BlackpantherWorkoutCell.append(Workout(smallImage: #imageLiteral(resourceName: "soloaltarmlegraises"), largeImage: #imageLiteral(resourceName: "altarmlegraises"), workoutText: "Alt arm/leg raises", reps: 12, type: false, videoLink: "DFk3yGZv62U", videoExist: true))
        BlackpantherWorkoutCell.append(Workout(smallImage: #imageLiteral(resourceName: "soloelbowplank"), largeImage: #imageLiteral(resourceName: "bodysaw"), workoutText: "Body saw", reps: 10, type: false, videoLink: "ZTN2mCuYi2Y", videoExist: true))
        BlackpantherWorkoutCell.append(Workout(smallImage: #imageLiteral(resourceName: "soloelbowplanktwists"), largeImage: #imageLiteral(resourceName: "elbowplanktwists"), workoutText: "Elbow plank twists", reps: 20, type: true, videoLink: "ArZXCfbjxWs", videoExist: false))
        
        BatmanWorkoutsCell = []
        BatmanWorkoutsCell.append(Workout(smallImage: #imageLiteral(resourceName: "solositouts"), largeImage: #imageLiteral(resourceName: "sitouts"), workoutText: "Sit-outs", reps: 12, type: false, videoLink: "5bOjqyL0PGE", videoExist: true))
        BatmanWorkoutsCell.append(Workout(smallImage: #imageLiteral(resourceName: "solobuttups"), largeImage: #imageLiteral(resourceName: "buttups"), workoutText: "Butt-ups", reps: 15, type: false, videoLink: "fKbwSN6hwxw", videoExist: true))
        BatmanWorkoutsCell.append(Workout(smallImage: #imageLiteral(resourceName: "solopunches"), largeImage: #imageLiteral(resourceName: "punches"), workoutText: "Punches", reps: 60, type: false, videoLink: "M_4Vt5lfEUE", videoExist: true))
        BatmanWorkoutsCell.append(Workout(smallImage: #imageLiteral(resourceName: "soloaltarmlegraises"), largeImage: #imageLiteral(resourceName: "altarmlegraises"), workoutText: "Alt arm/leg raises", reps: 12, type: false, videoLink: "DFk3yGZv62U", videoExist: true))
        BatmanWorkoutsCell.append(Workout(smallImage: #imageLiteral(resourceName: "soloelbowstrike"), largeImage: #imageLiteral(resourceName: "elbowstrike"), workoutText: "Elbow strike", reps: 40, type: false, videoLink: "ujppQiig9CU", videoExist: true))
        BatmanWorkoutsCell.append(Workout(smallImage: #imageLiteral(resourceName: "solopushups"), largeImage: #imageLiteral(resourceName: "pushups"), workoutText: "Push-ups", reps: 12, type: false, videoLink: "v9LABVJzv8A", videoExist: true))
        BatmanWorkoutsCell.append(Workout(smallImage: #imageLiteral(resourceName: "solokneestrike"), largeImage: #imageLiteral(resourceName: "kneestrike"), workoutText: "Knee strike", reps: 20, type: false, videoLink: "RBiqNyxcnco", videoExist: true))
        BatmanWorkoutsCell.append(Workout(smallImage: #imageLiteral(resourceName: "elbowplank"), largeImage: #imageLiteral(resourceName: "elbowplank"), workoutText: "Elbow plank", reps: 40, type: true, videoLink: "ArZXCfbjxWs", videoExist: false))
    
        ThorWorkoutsCell = []
        ThorWorkoutsCell.append(Workout(smallImage: #imageLiteral(resourceName: "solositups"), largeImage: #imageLiteral(resourceName: "situps"), workoutText: "Sit-ups", reps: 30, type: false, videoLink: "5bOjqyL0PGE", videoExist: true))
        ThorWorkoutsCell.append(Workout(smallImage: #imageLiteral(resourceName: "solojumpkneetucks"), largeImage: #imageLiteral(resourceName: "jumpkneetucks"), workoutText: "Knee tuck jumps", reps: 20, type: false, videoLink: "ArZXCfbjxWs", videoExist: true))
        ThorWorkoutsCell.append(Workout(smallImage: #imageLiteral(resourceName: "solopunches"), largeImage: #imageLiteral(resourceName: "punches"), workoutText: "Punches", reps: 20, type: false, videoLink: "M_4Vt5lfEUE", videoExist: true))
        ThorWorkoutsCell.append(Workout(smallImage: #imageLiteral(resourceName: "solokneestrike"), largeImage: #imageLiteral(resourceName: "kneestrike"), workoutText: "Knee strike", reps: 10, type: false, videoLink: "RBiqNyxcnco", videoExist: true))
        ThorWorkoutsCell.append(Workout(smallImage: #imageLiteral(resourceName: "solobuttups"), largeImage: #imageLiteral(resourceName: "buttups"), workoutText: "Butt-ups", reps: 20, type: false, videoLink: "fKbwSN6hwxw", videoExist: true))
        ThorWorkoutsCell.append(Workout(smallImage: #imageLiteral(resourceName: "solopushups"), largeImage: #imageLiteral(resourceName: "pushups"), workoutText: "Push-ups", reps: 30, type: false, videoLink: "v9LABVJzv8A", videoExist: true))
        ThorWorkoutsCell.append(Workout(smallImage: #imageLiteral(resourceName: "getups"), largeImage: #imageLiteral(resourceName: "getups"), workoutText: "Get-ups", reps: 30, type: false, videoLink: "n47X4HOhfUk", videoExist: true))
        ThorWorkoutsCell.append(Workout(smallImage: #imageLiteral(resourceName: "elbowplank"), largeImage: #imageLiteral(resourceName: "elbowplank"), workoutText: "Elbow plank", reps: 60, type: true, videoLink: "ArZXCfbjxWs", videoExist: false))
        
        IronManWorkoutsCell = []
        IronManWorkoutsCell.append(Workout(smallImage: #imageLiteral(resourceName: "soloaltarmlegraises"), largeImage: #imageLiteral(resourceName: "altarmlegraises"), workoutText: "Alt arm/leg raises", reps: 20, type: false, videoLink: "DFk3yGZv62U", videoExist: true))
        IronManWorkoutsCell.append(Workout(smallImage: #imageLiteral(resourceName: "solositups"), largeImage: #imageLiteral(resourceName: "situps"), workoutText: "Sit-ups", reps: 20, type: false, videoLink: "5bOjqyL0PGE", videoExist: true))
        IronManWorkoutsCell.append(Workout(smallImage: #imageLiteral(resourceName: "solojumpkneetucks"), largeImage: #imageLiteral(resourceName: "jumpkneetucks"), workoutText: "Knee tuck jumps", reps: 15, type: false, videoLink: "ArZXCfbjxWs", videoExist: true))
        IronManWorkoutsCell.append(Workout(smallImage: #imageLiteral(resourceName: "solopunches"), largeImage: #imageLiteral(resourceName: "punches"), workoutText: "Punches", reps: 30, type: false, videoLink: "M_4Vt5lfEUE", videoExist: true))
        IronManWorkoutsCell.append(Workout(smallImage: #imageLiteral(resourceName: "solokneestrike"), largeImage: #imageLiteral(resourceName: "kneestrike"), workoutText: "Knee strike", reps: 10, type: false, videoLink: "RBiqNyxcnco", videoExist: true))
        IronManWorkoutsCell.append(Workout(smallImage: #imageLiteral(resourceName: "getups"), largeImage: #imageLiteral(resourceName: "getups"), workoutText: "Get-ups", reps: 20, type: false, videoLink: "n47X4HOhfUk", videoExist: true))
        IronManWorkoutsCell.append(Workout(smallImage: #imageLiteral(resourceName: "solopushups"), largeImage: #imageLiteral(resourceName: "pushups"), workoutText: "Push-ups", reps: 20, type: false, videoLink: "v9LABVJzv8A", videoExist: true))
        IronManWorkoutsCell.append(Workout(smallImage: #imageLiteral(resourceName: "run"), largeImage: #imageLiteral(resourceName: "run"), workoutText: "Run on the spot", reps: 50, type: true, videoLink: "", videoExist: false))
        
    }
    
    func getCaptainAmericaCellWorkOuts() -> [Workout] {
        return CaptainAmericaWorkoutsCell
    }
    
    func getDeadpollWorkoutcell() -> [Workout] {
        return DeadpoolWorkoutsCell
    }
    
    func getBlackpantherWorkoutcell() -> [Workout] {
        return BlackpantherWorkoutCell
    }
    
    func getBatmanWorkoutcell() -> [Workout] {
        return BatmanWorkoutsCell
    }
    
    func getThorWorkoutcell() -> [Workout] {
        return ThorWorkoutsCell
    }
    
    func getIronManWorkoutcell() -> [Workout] {
        return IronManWorkoutsCell
    }
    
}

