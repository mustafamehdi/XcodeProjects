//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

func calculateBMI(Mass : Int , Hight : Float) -> Float
{
    var BMI : Float = Float(Mass) / pow (Hight,2)
    
    
    
    if BMI > 25
    {
    print ("you are overweight")
    }
    else if BMI > 18.5 && BMI < 25
    {
          print ("you are normal weight")
    }
    else
    {
        print ("you are under weight")
    }
    
    
    return BMI
    
}
print( calculateBMI(Mass: 84, Hight: 3.1))


