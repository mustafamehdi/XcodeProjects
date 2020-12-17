//
//  SelfDrivingCar.swift
//  Classes and Objects
//
//  Created by Mustafa Mehdi on 2018-09-28.
//  Copyright © 2018 Mustafa Mehdi. All rights reserved.
//

import Foundation

class SelfDrivingCar : Car
{
    var destination : String?
    override func drive()
    {
    super.drive()
        print (destination!)
    }
}
