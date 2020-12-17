//
//  ViewController.swift
//  BMI_Calculator
//
//  Created by Mustafa Mehdi on 2018-12-26.
//  Copyright © 2018 Mustafa Mehdi. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var weight: UITextField!
    @IBOutlet weak var height: UITextField!
    
    @IBOutlet weak var bmiResult: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    
    @IBAction func getBMI(_ sender: UIButton) {

        let inHight:Float = Float(height.text!)!
        let inWeight:Float = Float(weight.text!)!
     let   bmiNum:Float = calculateBMI(height: inHight, weight: inWeight)
        
        if bmiNum > 25
        {
            bmiResult.text = "You are over weight and your BMI is \(bmiNum)"
        }else if bmiNum > 18.5 && bmiNum < 25
        {
            bmiResult.text = "You are normal weight and your BMI is \(bmiNum)"
        }else{
           bmiResult.text = "You are under weight and your BMI is \(bmiNum)"
        }
    }
    
    
    func calculateBMI(height:Float,weight:Float) -> Float
    {
        
      let  BMI:Float = weight / pow(height, 2)
        print(BMI)
        return BMI
    }
}

