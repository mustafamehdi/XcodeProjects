//
//  ViewController.swift
//  Magic8Ball
//
//  Created by Mustafa Mehdi on 2018-12-25.
//  Copyright © 2018 Mustafa Mehdi. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var mainImage: UIImageView!
    let myAllBall:[String] = ["ball1","ball2","ball3","ball4","ball5"]
    override func viewDidLoad() {
        super.viewDidLoad()
       myMainlogic()
    }

    @IBAction func AskBtn(_ sender: UIButton) {
         myMainlogic()
    }
    
    
    func myMainlogic()
    {
        
        let myRandNum = Int.random(in: 0...4)
        mainImage.image = UIImage(named: myAllBall[myRandNum])
    }
}

