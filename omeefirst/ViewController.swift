//
//  ViewController.swift
//  omeefirst
//
//  Created by Omkar Chakradhar Thawakar on 24/03/17.
//  Copyright © 2017 Omkar Chakradhar Thawakar. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var rightimageView: UIImageView!
    @IBOutlet weak var rightScoreLabel: UILabel!
    var rightScore = 0
    
    @IBOutlet weak var leftimageView: UIImageView!
    @IBOutlet weak var leftScoreLabel: UILabel!
    var leftScore = 0
    
    
    let cardNames = [ "club-2", "club-3", "club-4", "club-5", "club-6", "club-7", "club-8", "club-9", "club-10", "jack", "queen", "king", "club-1"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func dealTapped(sender: UIButton) {
        
        //randomize the left number from 0 to 12
        let leftNumber = Int(arc4random_uniform(13))
        
        //settting left card image
        leftimageView.image = UIImage(named: cardNames[leftNumber])
        
        //randomize the right number from 0 to 12
        let rightNumber = Int(arc4random_uniform(13))
        
        //settting right card image
        rightimageView.image = UIImage(named: cardNames[rightNumber])
        
        //compare the cards numbers
        if leftNumber > rightNumber {
            //left card wins
            
            //increment score
            leftScore += 1
            
            //update the label
            leftScoreLabel.text = String(leftScore)
        }
        else if leftNumber == rightNumber {
            //its a tie
        }
        else {
            //right card wins
            
            //increment the right score
            rightScore += 1
            
            //update the right score label
            rightScoreLabel.text = String(rightScore)
        }
    }

}

