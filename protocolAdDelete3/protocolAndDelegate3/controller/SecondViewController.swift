//
//  SecondViewController.swift
//  protocolAndDelegate3
//
//  Created by Mustafa Mehdi on 2018-10-06.
//  Copyright © 2018 Mustafa Mehdi. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    
    
    @IBOutlet weak var secondScreenTxtBox: UITextField!
    var getData : String?
    var mydelegate : mydataTransfer?
    override func viewDidLoad() {
        super.viewDidLoad()

        secondScreenTxtBox.text = getData!
     
        
    }
    

    @IBAction func sendDataToFirstScteen(_ sender: Any) {
        mydelegate?.myScreenDataTransfer(myData: secondScreenTxtBox.text!)
        self.dismiss(animated: true, completion: nil)
    }
    
}
