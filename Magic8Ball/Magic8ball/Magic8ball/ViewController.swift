//
//  ViewController.swift
//  Magic8ball
//
//  Created by Mustafa Mehdi on 2018-09-01.
//  Copyright © 2018 Mustafa Mehdi. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var myMainImage: UIImageView!
    let myimag = ["ball1","ball2","ball3","ball4","ball5"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    @IBAction func askMe(_ sender: Any) {
        myMainImage.image = UIImage (named: selectImage())
    }
    
    override func motionEnded(_ motion: UIEventSubtype, with event: UIEvent?) {
        myMainImage.image = UIImage (named: selectImage())
    }
    
    func selectImage() -> String
    {
        
        var myImageNum : Int
        myImageNum = Int(arc4random_uniform(5))
       return myimag[myImageNum]
    }
}

