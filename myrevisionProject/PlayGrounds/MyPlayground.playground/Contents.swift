import UIKit




func myfibonacchi(until: Int)
{
    var i:Int = 0
    var j:Int = 1
    var k:Int = 0
     print(k)
    for _ in 1...until
    {
        
        k = i + j
        print(k)
        j = i
        i = k
       
    }
  
    
}
    
var myarr = [1,2,3,4,5,6]



print(myarr.sort())
