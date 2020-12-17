//
//  secondVC.swift
//  segues2
//
//  Created by Mustafa Mehdi on 2018-09-30.
//  Copyright © 2018 Mustafa Mehdi. All rights reserved.
//

import UIKit

class secondVC: UIViewController {

    @IBOutlet weak var fullNameSecondVClabel: UILabel!
    var fullName: String?
    override func viewDidLoad() {
        super.viewDidLoad()

        fullNameSecondVClabel.text = fullName
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
