//: Playground - noun: a place where people can play

import UIKit

let mytable  = [1,2,3,4,5,6,7,8,9,10]

func mymathcTable(table: Int)
{
    for mynum in 1...10 where mynum % 2 != 0
    {
        print("\(table) X \(mynum) = \(mynum * table)")
        
    }
}


mymathcTable(table: 5)
