//
//  ViewController.swift
//  bitCoinPriceTracker
//
//  Created by Mustafa Mehdi on 2018-10-10.
//  Copyright © 2018 Mustafa Mehdi. All rights reserved.
//

import UIKit
import Alamofire
import SwiftyJSON
class ViewController: UIViewController, UIPickerViewDelegate,UIPickerViewDataSource {
   
    @IBOutlet weak var currencyPicker: UIPickerView!
    
    @IBOutlet weak var bitCoinRate: UILabel!
    var currencyCountryArray : [String]  = ["Afghanistan","Akrotiri and Dhekelia (UK)"]
    var currencyArray : [String]  = ["USD","INR"]
    var BTApiURL = "https://apiv2.bitcoinaverage.com/indices/global/ticker/all"
    let currentTimeInMiliseconds = Date().timeIntervalSince1970.milliseconds
   
  
  
    //var mybitcoinkey = "MmE2ZGM5Y2FlYmM0NGM3MmEwOTMzYzk0NWNmNDhmNjdmNTQ1ZTlmNWEwZGU0YTZkYTk0YzE3ZjNmMzgzZGU3Mg"
    var myparams : [String : String] = [:]
    let headers = [
        "X-signature": "MmE2ZGM5Y2FlYmM0NGM3MmEwOTMzYzk0NWNmNDhmNjdmNTQ1ZTlmNWEwZGU0YTZkYTk0YzE3ZjNmMzgzZGU3Mg",
       
    ]
    override func viewDidLoad() {
        super.viewDidLoad()
       currencyPicker.dataSource = self
        currencyPicker.delegate = self
    }
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
      return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
       return currencyArray.count
    }
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return currencyCountryArray[row]
    }
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        
       // myparams = [currencyArray[row] : myKey]
        myparams = ["crypto" : "BTC", "fiat" : currencyArray[row]]
     // getBitCoinrate(currency: <#T##String#>)
       print(getBitCoinrate(url : BTApiURL , parameters : myparams))
       
 
    }
    
    func getBitCoinrate(url: String, parameters: [String : String]) -> String
    {
        Alamofire.request(url, method:.get, parameters: parameters , headers: headers).responseString {
            
     response in
            if response.result.isSuccess {
                print("Got Result \(response.result.value!)")
                 print("Got Result \(response.request!)")
               
            }else{
                print("No Result \(response.result.error!)")
            }
        }
     return "Got "
    }

   
}

