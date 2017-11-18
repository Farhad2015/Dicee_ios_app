//
//  ViewController.swift
//  Dicee
//
//  Created by NETG-5 on 16/11/17.
//  Copyright © 2017 NETG5. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var diceImageViewOne: UIImageView!
    @IBOutlet weak var diceImageViewTwo: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func rollButtonPressed(_ sender: UIButton) {
        let randomDiceIndexOne = Int(arc4random_uniform(6)) + 1
        let randomDiceIndexTwo = Int(arc4random_uniform(6)) + 1
        
        if randomDiceIndexOne == 1 {
            diceImageViewOne.image = UIImage(named: "dice1")
        } else if randomDiceIndexOne == 2 {
            diceImageViewOne.image = UIImage(named: "dice2")
        } else if randomDiceIndexOne == 3 {
            diceImageViewOne.image = UIImage(named: "dice3")
        } else if randomDiceIndexOne == 4 {
            diceImageViewOne.image = UIImage(named: "dice4")
        } else if randomDiceIndexOne == 5 {
            diceImageViewOne.image = UIImage(named: "dice5")
        } else if randomDiceIndexOne == 6 {
            diceImageViewOne.image = UIImage(named: "dice6")
        }
        
        
        if randomDiceIndexTwo == 1 {
            diceImageViewTwo.image = UIImage(named: "dice1")
        } else if randomDiceIndexTwo == 2 {
            diceImageViewTwo.image = UIImage(named: "dice2")
        } else if randomDiceIndexTwo == 3 {
            diceImageViewTwo.image = UIImage(named: "dice3")
        } else if randomDiceIndexTwo == 4 {
            diceImageViewTwo.image = UIImage(named: "dice4")
        } else if randomDiceIndexTwo == 5 {
            diceImageViewTwo.image = UIImage(named: "dice5")
        } else if randomDiceIndexTwo == 6 {
            diceImageViewTwo.image = UIImage(named: "dice6")
        }
        
        print("The first random number is \(randomDiceIndexOne)")
        print("The second random number is \(randomDiceIndexTwo)")
    }
    
}

