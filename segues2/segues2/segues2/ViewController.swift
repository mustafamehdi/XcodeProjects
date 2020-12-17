//
//  ViewController.swift
//  segues2
//
//  Created by Mustafa Mehdi on 2018-09-30.
//  Copyright © 2018 Mustafa Mehdi. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var firstName: UITextField!
    @IBOutlet weak var secondName: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func getFullNane(_ sender: Any) {
        performSegue(withIdentifier: "secondsegueVC", sender: self)
        
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.identifier == "secondsegueVC"
        {
          let secondVCVar = segue.destination as! secondVC
            secondVCVar.fullName = "Your Full Name : \(firstName.text!) \(secondName.text!)"
        }
        
    }
    
}

