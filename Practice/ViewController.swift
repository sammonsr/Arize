//
//  ViewController.swift
//  Practice
//
//  Created by roxy on 24/02/2017.
//  Copyright © 2017 roxy. All rights reserved.
//

import UIKit
import Alamofire
import SwiftyJSON


class ViewController: UIViewController {
    
    override func viewDidLoad() {
        print("IN viewDidLoad")
        super.viewDidLoad()
        
        
        //let myVar = "tube"
        
        //TODO: connect each to a status - show a red flag if !="Good Service", print out message when click on board
        
        Alamofire.request("https://api.tfl.gov.uk/Line/Mode/tube/Status").responseJSON { response in
            
            print("=========================")
            
            if let jsonData = response.result.value {
                let result = JSON(jsonData).arrayValue //accessing array in dictionary
                
                var severity = ""
                
                
                for index in 0...10 {
                    severity = (result[index]["lineStatuses"][0]["statusSeverityDescription"]).stringValue //accessing nested dictionary and converting to String value
                    
                    //print name and status of lines that are not "Good Service"
                    if(severity != "Good Service") {
                        print(result[index]["name"])
                        print(severity)
                    }
                    
                    var bakerloo = (result[0]["lineStatuses"][0]["statusSeverityDescription"]).stringValue
                    var central = (result[1]["lineStatuses"][0]["statusSeverityDescription"]).stringValue
                    var circle = (result[2]["lineStatuses"][0]["statusSeverityDescription"]).stringValue
                    var district = (result[3]["lineStatuses"][0]["statusSeverityDescription"]).stringValue
                    var hammersmithCity = (result[4]["lineStatuses"][0]["statusSeverityDescription"]).stringValue
                    var jubilee = (result[5]["lineStatuses"][0]["statusSeverityDescription"]).stringValue
                    var metropolitan = (result[6]["lineStatuses"][0]["statusSeverityDescription"]).stringValue
                    var northern = (result[7]["lineStatuses"][0]["statusSeverityDescription"]).stringValue
                    var piccadilly = (result[8]["lineStatuses"][0]["statusSeverityDescription"]).stringValue
                    var victoria = (result[9]["lineStatuses"][0]["statusSeverityDescription"]).stringValue
                    var waterloo = (result[10]["lineStatuses"][0]["statusSeverityDescription"]).stringValue
                    
                }
                
                
            }
            
            print("=========================")
            
        }
        
        
        Alamofire.request("https://random-quote-generator.herokuapp.com/api/quotes/random").responseJSON { response in
            
            print("=========================")
            
            if let jsonDataQuote = response.result.value {
                
                //For quote api:
                let resultQuote = JSON(jsonDataQuote) //making into dictionary
                print(resultQuote["quote"])
                print(resultQuote["author"])
                
            }
            print("=========================")
            
        }
        
        Alamofire.request("https://api.apixu.com/v1/forecast.json?key=85120286ee8d407ba51211651172603&q=London").responseJSON { response in
            
            
            print("=========================")
            
            if let jsonWeatherData = response.result.value {
                let resultWeather = JSON(jsonWeatherData) //accessing array in dictionary
                
                //TODO: Get variables for temperature every hour, and conditions for every hour
                //Can end up graphing the poitns for each hour for the visual?
                
                print(resultWeather["location"]["name"])
                print(resultWeather["current"]["temp_c"])
                
                //variable for temp for each hour
                var midnight = resultWeather["forecast"]["forecastday"][0]["hour"][0]["temp_c"]
                var am1 = resultWeather["forecast"]["forecastday"][0]["hour"][1]["temp_c"]
                var am2 = resultWeather["forecast"]["forecastday"][0]["hour"][2]["temp_c"]
                var am3 = resultWeather["forecast"]["forecastday"][0]["hour"][3]["temp_c"]
                var am4 = resultWeather["forecast"]["forecastday"][0]["hour"][4]["temp_c"]
                var am5 = resultWeather["forecast"]["forecastday"][0]["hour"][5]["temp_c"]
                var am6 = resultWeather["forecast"]["forecastday"][0]["hour"][6]["temp_c"]
                var am7 = resultWeather["forecast"]["forecastday"][0]["hour"][7]["temp_c"]
                var am8 = resultWeather["forecast"]["forecastday"][0]["hour"][8]["temp_c"]
                var am9 = resultWeather["forecast"]["forecastday"][0]["hour"][9]["temp_c"]
                var am10 = resultWeather["forecast"]["forecastday"][0]["hour"][10]["temp_c"]
                var am11 = resultWeather["forecast"]["forecastday"][0]["hour"][11]["temp_c"]
                var noon = resultWeather["forecast"]["forecastday"][0]["hour"][12]["temp_c"]
                var pm1 = resultWeather["forecast"]["forecastday"][0]["hour"][13]["temp_c"]
                var pm2 = resultWeather["forecast"]["forecastday"][0]["hour"][14]["temp_c"]
                var pm3 = resultWeather["forecast"]["forecastday"][0]["hour"][15]["temp_c"]
                var pm4 = resultWeather["forecast"]["forecastday"][0]["hour"][16]["temp_c"]
                var pm5 = resultWeather["forecast"]["forecastday"][0]["hour"][17]["temp_c"]
                var pm6 = resultWeather["forecast"]["forecastday"][0]["hour"][18]["temp_c"]
                var pm7 = resultWeather["forecast"]["forecastday"][0]["hour"][19]["temp_c"]
                var pm8 = resultWeather["forecast"]["forecastday"][0]["hour"][20]["temp_c"]
                var pm9 = resultWeather["forecast"]["forecastday"][0]["hour"][21]["temp_c"]
                var pm10 = resultWeather["forecast"]["forecastday"][0]["hour"][22]["temp_c"]
                var pm11 = resultWeather["forecast"]["forecastday"][0]["hour"][23]["temp_c"]
                
                
            }
            
            print("=========================")
            
        }
        
    }
    
}





