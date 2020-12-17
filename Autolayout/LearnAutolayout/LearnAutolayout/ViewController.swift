//
//  ViewController.swift
//  LearnAutolayout
//
//  Created by Mustafa Mehdi on 2018-09-21.
//  Copyright © 2018 Mustafa Mehdi. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        let squre =
            UIView (frame: CGRect(x: self.view.frame.width/2 - 75, y: self.view.frame.height/2 - 75, width: 150, height: 150))
        
        squre.backgroundColor = UIColor.black
        self.view.addSubview(squre)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

