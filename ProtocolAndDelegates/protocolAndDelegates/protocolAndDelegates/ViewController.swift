//
//  ViewController.swift
//  protocolAndDelegates
//
//  Created by Mustafa Mehdi on 2018-09-30.
//  Copyright © 2018 Mustafa Mehdi. All rights reserved.
//

import UIKit

class ViewController: UIViewController, PrepareData{
   
    
    

    @IBOutlet weak var firstScreenTxt: UITextField!
    var getDataOfSecondScreen : String = ""
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
   
        
        
    }


    @IBAction func changeColor(_ sender: Any) {
        
        self.view.backgroundColor = UIColor.blue
    }
    
    @IBAction func getSecondScreen(_ sender: Any) {
        
    }
    func getSecondScreenData(getName: String) {
        firstScreenTxt.text = getName
    }
    
    
   override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "secondScreen"
        {
         let secondScreen =   segue.destination as! SecondViewController
            secondScreen.firstScreenData = firstScreenTxt.text!
            
            secondScreen.delegatePrepareData = self
       }
    }
}

