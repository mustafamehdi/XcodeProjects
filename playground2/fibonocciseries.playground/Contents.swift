//: Playground - noun: a place where people can play

import UIKit

func fibnocci(mynun : Int)
{
    var firstNum = -1
    var secondNum = 1
    var sum = 0
    
    for _ in 1...mynun
    {
        print (firstNum)
        sum = firstNum + secondNum
        firstNum = secondNum
        secondNum = sum
       
        
        
        
    }
    
}

fibnocci(mynun: 1000000)
