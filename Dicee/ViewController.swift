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
    
    let diceArray = ["dice1", "dice2", "dice3", "dice4", "dice5", "dice6"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        updateDiceImages()
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func rollButtonPressed(_ sender: UIButton) {
        updateDiceImages()
    }
    
    func updateDiceImages() {
        let randomDiceIndexOne = Int(arc4random_uniform(6))
        let randomDiceIndexTwo = Int(arc4random_uniform(6))
        
        diceImageViewOne.image = UIImage(named: diceArray[randomDiceIndexOne])
        diceImageViewTwo.image = UIImage(named: diceArray[randomDiceIndexTwo])
    }
    
    override func motionEnded(_ motion: UIEventSubtype, with event: UIEvent?) {
        updateDiceImages()
    }
    
}

