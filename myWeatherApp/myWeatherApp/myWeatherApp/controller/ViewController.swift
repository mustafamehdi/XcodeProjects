//
//  ViewController.swift
//  myWeatherApp
//
//  Created by Mustafa Mehdi on 2018-10-06.
//  Copyright © 2018 Mustafa Mehdi. All rights reserved.
//

import UIKit
import CoreLocation
import Alamofire
import SwiftyJSON

class ViewController: UIViewController, CLLocationManagerDelegate,cityName {
    
    

let WEATHER_URL = "http://api.openweathermap.org/data/2.5/weather"
let WEATHER_KEY = "e72ca729af228beabd5d20e3b7749713"
    
    @IBOutlet weak var cityName: UILabel!
    @IBOutlet weak var weatherImage: UIImageView!
    @IBOutlet weak var weatherTemprature: UILabel!
    @IBOutlet weak var countryName: UILabel!
    let myWeatherImages : [String] = ["cloudy2","fog","light_rain","overcast","shower3","snow4","snow5","sunny","tstorm1","tstorm3","dunno"]
    
    let locationManager = CLLocationManager()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        locationManager.delegate = self
        locationManager.desiredAccuracy = kCLLocationAccuracyHundredMeters
        locationManager.requestWhenInUseAuthorization()
        locationManager.startUpdatingLocation()
      
    }

    @IBAction func goToSecondScreen(_ sender: Any) {
    }
    
    //MARK:- Networking
    
    func getWeatherData(url : String, paramerters : [String: String])
    {
     
        Alamofire.request(url, method: .get, parameters: paramerters).responseJSON {
            response in
            if response.result.isSuccess{
           
                    let weatherData : JSON = JSON(response.result.value!)
                   //print(weatherData)
                   self.updateWeatherData(weatherData: weatherData)
               // cityName.text = weatherData["name"];) as? String
                
            }else{
                
            }
        }
    }
    //MARK: JSONParsing
    
    //MARK: UIUpdate
    func updateWeatherData(weatherData : JSON)
    {
       // let cityName =
        print(weatherData)
        if weatherData["cod"].intValue != 404{
            
        
        cityName.text = weatherData["name"].stringValue
        countryName.text = weatherData["sys"]["country"].stringValue
        let tempratueInKelvin :Double  = (weatherData["main"]["temp"].doubleValue - 273.15)
        let tempInC : Int = Int(tempratueInKelvin)
        weatherTemprature.text = String(tempInC) + "º"
        let weatherId = weatherData["weather"][0]["id"]
        switch weatherId
        {
        case 800:
             weatherImage.image = UIImage(named: myWeatherImages[7])
        case 801...803:
             weatherImage.image = UIImage(named: myWeatherImages[0])
        case 804:
            weatherImage.image = UIImage(named: myWeatherImages[3])
        case 700...781:
            weatherImage.image = UIImage(named: myWeatherImages[1])
        case 600...622:
            weatherImage.image = UIImage(named: myWeatherImages[6])
        case 500...531:
            weatherImage.image = UIImage(named: myWeatherImages[2])
        case 300...321:
            weatherImage.image = UIImage(named: myWeatherImages[2])
        case 200...232:
            weatherImage.image = UIImage(named: myWeatherImages[9])
        default:
            //print(weatherId)
             weatherImage.image = UIImage(named: myWeatherImages[10])
         }
        }else
        {
            cityName.text = "Incorrect City"
            countryName.text = "Invalid County"
            weatherImage.image = UIImage(named: myWeatherImages[10])
             weatherTemprature.text = "--"
        }
    }
    //MARK: location manager delegate method
    
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        
        let location = locations[locations.count - 1]
        if location.horizontalAccuracy > 0
        {
            locationManager.stopUpdatingLocation()
            let latitude = String(location.coordinate.latitude)
            let longitude = String(location.coordinate.longitude)
            let params : [String : String] = ["lat" : latitude , "lon" : longitude, "appid" : WEATHER_KEY]
            getWeatherData(url: WEATHER_URL, paramerters : params)
        }
        
        
    }
    
    func locationManager(_ manager: CLLocationManager, didFailWithError error: Error) {
      print(error)
    }
    
    //MARK: my deletgate
    
    func getCityName(City: String) {
       // cityName.text = City
        let params : [String : String] = ["q" : City , "appid" : WEATHER_KEY]
        getWeatherData(url: WEATHER_URL, paramerters : params)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
    
        if segue.identifier == "secondScreen"
        {
            let secondScreenDetails = segue.destination as! SecondViewController
                secondScreenDetails.cityProtocol = self
            
        }
    }
}

