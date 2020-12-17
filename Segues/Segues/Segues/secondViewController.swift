//
//  secondViewController.swift
//  Segues
//
//  Created by Mustafa Mehdi on 2018-09-29.
//  Copyright © 2018 Mustafa Mehdi. All rights reserved.
//

import UIKit

class secondViewController: UIViewController {

    
    @IBOutlet weak var labelText: UILabel!
    var  firstSreenData : String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
labelText.text =  firstSreenData
        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
