//
//  ViewController.swift
//  flashChat
//
//  Created by Mustafa Mehdi on 2018-11-03.
//  Copyright © 2018 Mustafa Mehdi. All rights reserved.
//

import UIKit
import Firebase
class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    FirebaseApp.configure()
        let myDatabase = Database.database().reference()
        myDatabase.setValue("This is my first Data")
    }


}

