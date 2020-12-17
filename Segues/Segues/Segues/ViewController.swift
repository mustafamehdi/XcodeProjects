//
//  ViewController.swift
//  Segues
//
//  Created by Mustafa Mehdi on 2018-09-29.
//  Copyright © 2018 Mustafa Mehdi. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var enterText: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func buttonPress(_ sender: Any) {
        
        performSegue(withIdentifier: "goToSecondScreen", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        
        if segue.identifier ==  "goToSecondScreen" {
            let destinationVC = segue.destination as! secondViewController
         destinationVC.firstSreenData = enterText.text!
        }
    }
}

