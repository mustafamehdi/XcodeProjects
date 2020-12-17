//
//  ViewController.swift
//  protocolAndDelegate3
//
//  Created by Mustafa Mehdi on 2018-10-06.
//  Copyright © 2018 Mustafa Mehdi. All rights reserved.
//

import UIKit

class ViewController: UIViewController , mydataTransfer{
   

    @IBOutlet weak var firstScreenTextBox: UITextField!
    
    var myFristScreenTxt : String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        firstScreenTextBox.text = "EnterData"
     
    }

    func myScreenDataTransfer(myData: String) {
        firstScreenTextBox.text = myData
        
    }
    
    @IBAction func sendData(_ sender: Any) {
        performSegue(withIdentifier: "callSecondScreen" , sender: self)
 
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "callSecondScreen" {
         let mySecondScreen =   segue.destination as! SecondViewController
           mySecondScreen.getData = String(firstScreenTextBox.text!)
           mySecondScreen.mydelegate = self
        }
    }
   
}
