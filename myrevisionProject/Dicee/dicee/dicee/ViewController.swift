//
//  ViewController.swift
//  dicee
//
//  Created by Mustafa Mehdi on 2018-12-25.
//  Copyright © 2018 Mustafa Mehdi. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

  
    @IBOutlet weak var firstDice: UIImageView!
    @IBOutlet weak var secondDice: UIImageView!
    let myAllDice : [String] = ["dice1","dice2","dice3","dice4","dice5","dice6"]
    override func viewDidLoad() {
        super.viewDidLoad()
       updateDice()
    }

  
    @IBAction func rollBtn(_ sender: UIButton) {
        updateDice()
    }
    
    func updateDice()
    {
        let firstRandnum: Int = Int.random(in: 0...5)
        let secondRandnum: Int = Int.random(in: 0...5)
        
        firstDice.image = UIImage.init(named: myAllDice[firstRandnum])
        secondDice.image = UIImage.init(named: myAllDice[secondRandnum])
    }
    
    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
      updateDice()
    }
}

