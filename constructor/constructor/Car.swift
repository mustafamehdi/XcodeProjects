//
//  Car.swift
//  constructor
//
//  Created by Mustafa Mehdi on 2018-09-30.
//  Copyright © 2018 Mustafa Mehdi. All rights reserved.
//

import Foundation

class Car {
    
    var color : String = "Red"
    var numOfDoors : Int = 3
    
    
    convenience init (drawcolor : String)
    {
        self.init()
        
        color = drawcolor
    
    }
    
}
