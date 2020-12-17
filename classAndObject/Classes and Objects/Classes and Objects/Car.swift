
import Foundation
enum CarType {
    
    case Sedan
    case Coupe
    case Hatchback
    
}
class Car
{
    var color = "Black"
    var numberOfSeates : Int = 5
    var typeOfCar : CarType = .Coupe
 
   
    init ()
    {
        
    }
    convenience init(custmorChoseColor : String)
    {
        self.init()
        color = custmorChoseColor
    }
    func drive(){
        print("Car is moving")
    }
}
