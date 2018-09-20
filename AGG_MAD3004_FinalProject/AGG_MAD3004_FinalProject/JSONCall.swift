//
//  JSON.swift
//  AGG_MAD3004_FinalProject
//
//  Created by Giselle Tavares on 20/09/18.
//  Copyright © 2018 Giselle Tavares. All rights reserved.
//

import Foundation

internal class JSONCall {
    // read employee data from JSON file
    
    func callJSON() {
        
        let jsonString = """
            {
            "employees":
                [
                    {
                        "id": 1,
                        "name": "Michael Jackson",
                        "age": 53,
                        "vehicle": {
                            "type": "Car",
                            "make": "BMW",
                            "plate": "FGH8997",
                            "doorsQuantity": 4,
                            "hasSunroof": true
                        },
                        "employment": {
                            "type": "FullTime",
                            "salary": 5000.0,
                            "bonus": 300.0
                        }
                    },
                    {
                        "id": 2,
                        "name": "Sandra de Sa",
                        "age": 60,
                        "vehicle": {
                            "type": "Motorcycle",
                            "make": "Harley-Davidson",
                            "plate": "TG55RF",
                            "powerCC": 500,
                            "hasLuggageRack": true
                        },
                        "employment": {
                            "type": "Intern",
                            "salary": 1000.0
                        }
                    },
                    {
                        "id": 3,
                        "name": "John",
                        "age": 25,
                        "employment": {
                            "type": "CommissionBasedPartTime",
                            "rate": 30.0,
                            "hoursWorked": 10.0,
                            "commisionPerc": 20.0
                        }
                    }
                ]
            }
        """
        
        let data = jsonString.data(using: String.Encoding.utf8, allowLossyConversion: false)!
        do {
            let json = try JSONSerialization.jsonObject(with: data, options: []) as! [String: AnyObject]
            
            if let employees = json["employees"] as? [AnyObject] {
                print("\n\n***** Printing from a JSON data ******\n")
                for e in employees {
                    let jsonResult = e as! Dictionary<String, AnyObject>
                    
                    if let jsonResult = e as? Dictionary<String, AnyObject> {
                        if let name = jsonResult["name"] as? String
                            , let id = jsonResult["id"] as? Int
                            , let age = jsonResult["age"] as? Int
                            , let employment = jsonResult["employment"] as? [String: AnyObject]
                        {
                            print("Name: \(name)")
                            print("Id: \(id)")
                            print("Age: \(age)")
                            if let type = employment["type"] as? String {
                                print("Type: \(type)")
                                if type == "CommissionBasedPartTime" {
                                    if let commisionPerc = employment["commisionPerc"] as? Double
                                        , let hoursWorked = employment["hoursWorked"] as? Double
                                        , let rate = employment["rate"] as? Double{
                                        print("commisionPerc: \(commisionPerc)")
                                        print("hoursWorked: \(hoursWorked)")
                                        print("rate: \(rate)")
                                    }
                                } else if type == "Intern" {
                                    if let salary = employment["salary"] as? Double {
                                        print("salary: \(salary)")
                                    }
                                } else if type == "FullTime" {
                                    if let salary = employment["salary"] as? Double,
                                        let bonus = employment["bonus"] as? Double {
                                        print("salary: \(salary)")
                                        print("bonus: \(bonus)")
                                    }
                                } else if type == "partTimeFixedAmount" {
                                    if let fixedAmount = employment["fixedAmount"] as? Double
                                        , let hoursWorked = employment["hoursWorked"] as? Double
                                        , let rate = employment["rate"] as? Double{
                                        print("fixedAmount: \(fixedAmount)")
                                        print("hoursWorked: \(hoursWorked)")
                                        print("rate: \(rate)")
                                    }
                                }
                            }
                            if let vehicle = jsonResult["vehicle"] as? [String: AnyObject] {
                                if let type = vehicle["type"] {
                                    print("Type: \(type)")
                                    if type as! String == "Motorcycle" {
                                        if let make = vehicle["make"] as? String
                                            , let plate = vehicle["plate"] as? String
                                            , let powerCC = vehicle["powerCC"] as? Int
                                            , let hasLuggageRack = vehicle["hasLuggageRack"] as? Bool {
                                            print("make: \(make)")
                                            print("plate: \(plate)")
                                            print("powerCC: \(powerCC)")
                                            print("hasLuggageRack: \(hasLuggageRack)")
                                        }
                                    } else if type as! String == "Car" {
                                        if let make = vehicle["make"] as? String
                                            , let plate = vehicle["plate"] as? String
                                            , let doorsQuantity = vehicle["doorsQuantity"] as? Int
                                            , let hasSunroof = vehicle["hasSunroof"] as? Bool {
                                            print("make: \(make)")
                                            print("plate: \(plate)")
                                            print("doorsQuantity: \(doorsQuantity)")
                                            print("hasSunroof: \(hasSunroof)")
                                        }
                                    }
                                }
                            } else {
                                print(">>>>> Employee has no Vehicle registered")
                            }
                            
                        }
                    }
                    print("*****************************************\n")
                }
            }
        } catch let error as NSError {
            print("Failed to load: \(error.localizedDescription)")
        }
    }
}
