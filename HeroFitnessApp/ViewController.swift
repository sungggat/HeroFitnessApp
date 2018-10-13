//
//  ViewController.swift
//  HeroFitnessApp
//
//  Created by Sunggat Aiymbay on 30.07.2018.
//  Copyright © 2018 Sunggat Aiymbay. All rights reserved.
//

import UIKit
import UPCarouselFlowLayout
import LinearProgressBar
class ViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {
   

    @IBOutlet weak var walkThroughCollectionView: UICollectionView!
    var k : Int?

    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        self.superheroes1 = self.manager1.superheroes
        
        self.navigationController?.navigationBar.barTintColor = UIColor.black
        self.navigationController?.navigationBar.backgroundColor = UIColor.black
        self.navigationController?.navigationBar.titleTextAttributes = [NSAttributedStringKey.font: UIFont(name: "SignPainter-HouseScript", size: 28)!, NSAttributedStringKey.foregroundColor:UIColor.titleColor()]
        
        walkThroughCollectionView.register(UINib.init(nibName: "WalkThroughCollectionViewCell", bundle: nil), forCellWithReuseIdentifier: "walkThroughIdentifierß")
        
        let floawLayout = UPCarouselFlowLayout()
        floawLayout.itemSize = CGSize(width: UIScreen.main.bounds.size.width - 60.0, height: walkThroughCollectionView.frame.size.height-100)
        floawLayout.scrollDirection = .horizontal
        floawLayout.sideItemScale = 0.8
        floawLayout.sideItemAlpha = 0.8
        floawLayout.spacingMode = .fixed(spacing: 7.0)
        
        walkThroughCollectionView.collectionViewLayout = floawLayout
        walkThroughCollectionView.showsHorizontalScrollIndicator = false
        walkThroughCollectionView.delegate = self
        walkThroughCollectionView.dataSource = self
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)

        self.title = "HEROIFY"
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return self.superheroes1.count
    }
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let superhero = self.superheroes1[indexPath.row] as Superhero
        let cell = walkThroughCollectionView.dequeueReusableCell(withReuseIdentifier: "walkThroughIdentifierß", for: indexPath) as! WalkThroughCollectionViewCell
        
        cell.PowerGridUIView.backgroundColor = UIColor.black
        cell.HeroImgvWalkthrough.image = superhero.image
        cell.cntView.backgroundColor = superhero.colorOfHero
        cell.SuperheroNameLabel!.font = UIFont.DINCondensedBold(withSize: 35)
        cell.SuperheroNameLabel.text = superhero.name
        cell.agilityProgressBar.progressValue = CGFloat(Double(superhero.speed*100)/7)
        cell.strengthProgressBar.progressValue = CGFloat(Double(superhero.strength*100)/7)
        cell.fightProgressBar.progressValue = CGFloat(Double(superhero.fight*100)/7)
        return cell
    }
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        k = indexPath.row
        performSegue(withIdentifier: "segue", sender: self)
    }
    
    let manager1 = SuperheroDataSource()
    var superheroes1 : [Superhero] = []

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "segue" {
            let secondController = segue.destination as! WorkoutViewController
            secondController.pageNumber = k
        }
        
    }
    

}


