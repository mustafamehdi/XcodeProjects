//
//  SecondViewController.swift
//  protocolAndDelegates
//
//  Created by Mustafa Mehdi on 2018-09-30.
//  Copyright © 2018 Mustafa Mehdi. All rights reserved.
//

import UIKit
protocol PrepareData{
    func getSecondScreenData(getName: String)
}

class SecondViewController: UIViewController {

    var firstScreenData : String = ""
    
    var delegatePrepareData:PrepareData?
    
    @IBOutlet weak var secondScreenTxt: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        secondScreenTxt.text = firstScreenData
        // Do any additional setup after loading the view.
    }
    

    @IBAction func secondScreenButton(_ sender: Any) {
     delegatePrepareData?.getSecondScreenData(getName: secondScreenTxt.text!)
        dismiss(animated: true, completion: nil)
    }
    
    
   

}
