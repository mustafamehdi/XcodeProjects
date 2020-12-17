//
//  SecondViewController.swift
//  myWeatherApp
//
//  Created by Mustafa Mehdi on 2018-10-08.
//  Copyright © 2018 Mustafa Mehdi. All rights reserved.
//

import UIKit

protocol cityName{
    func getCityName(City: String)
}
class SecondViewController: UIViewController {

    @IBOutlet weak var CityNameTxt: UITextField!
    var txtvalue : String = ""
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    var cityProtocol : cityName?
   
    @IBAction func cityNameBtn(_ sender: Any) {
        txtvalue = CityNameTxt.text as! String
        cityProtocol?.getCityName(City: txtvalue)
        self.dismiss(animated: true, completion: nil)
    }
    
    @IBAction func backScreen(_ sender: Any) {
    self.dismiss(animated: true, completion: nil)
    }
    
}
