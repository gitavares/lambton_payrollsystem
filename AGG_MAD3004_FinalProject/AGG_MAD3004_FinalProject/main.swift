//
//  main.swift
//  Payroll System
//
//  Created by Giselle Tavares on 08/09/18.
//  Copyright © 2018 Giselle Tavares. All rights reserved.
//

import Foundation

// read all these objects from a JSON file and put it in the dictionary
// Vehicles - objects
let vehicleCar1 = Car(make: "BMW", plate: "FGH8997", doorsQuantity: 4, hasSunroof: true)
let vehicleCar2 = Car(make: "Mercedez", plate: "YYT8978", doorsQuantity: 2, hasSunroof: false)
let vehicleMotorcycle1 = Motorcycle(make: "Harley-Davidson", plate: "TG55RF", powerCC: 500, hasLuggageRack: true)

// Employees - objects
let fullTimeEmployee1 = FullTime(salary: 5000, bonus: 300, name: "Michael Jackson", age: 53, vehicle: vehicleCar1)
let internEmployee1 = Intern(name: "Sandra de Sa", age: 60, schoolName: "Lambton College", internSalary: 1000, vehicle: vehicleMotorcycle1)
let partTimeCommissionEmployee1 = CommissionBasedPartTime(rate: 30, hoursWorked: 10, name: "John", age: 25, vehicle: vehicleCar2, commissionPerc: 20)
let partTimeFixedAmountEmployee1 = FixedBasedPartTime(rate: 30, hoursWorked: 10, name: "Cindy", age: 40, vehicle: nil, fixedAmount: 40)

// Print Employees
//print(fullTimeEmployee1.printMyData())
//print(internEmployee1.printMyData())
//print(partTimeCommissionEmployee1.printMyData())
//print(partTimeFixedAmountEmployee1.printMyData())

//var objArray: [IPrintable]
//objArray = []
//
//objArray.append(fullTimeEmployee1)
//objArray.append(internEmployee1)
//objArray.append(partTimeCommissionEmployee1)
//objArray.append(partTimeFixedAmountEmployee1)
//
//for obj in objArray {
//    print(obj.printMyData())
//}

// read employee data from JSON file
//let jsonString = """
//    {
//    "employees":
//        [
//            {
//                "id": 1,
//                "name": "Michael Jackson",
//                "age": 53,
//                "vehicle": {
//                    "type": "Car",
//                    "make": "BMW",
//                    "plate": "FGH8997",
//                    "doorsQuantity": 4,
//                    "hasSunroof": true
//                },
//                "employment": {
//                    "type": "FullTime",
//                    "salary": 5000,
//                    "bonus": 300
//                }
//            },
//            {
//                "id": 2,
//                "name": "Sandra de Sa",
//                "age": 60,
//                "vehicle": {
//                    "type": "Motorcycle",
//                    "make": "Harley-Davidson",
//                    "plate": "TG55RF",
//                    "powerCC": 500,
//                    "hasLuggageRack": true
//                },
//                "employment": {
//                    "type": "Intern",
//                    "salary": 1000
//                }
//            },
//            {
//                "id": 3,
//                "name": "John",
//                "age": 25,
//                "employment": {
//                    "type": "CommissionBasedPartTime",
//                    "rate": 30,
//                    "hoursWorked": 10,
//                    "commisionPerc": 20
//                }
//            }
//        ]
//    }
//"""
//
//let data = jsonString.data(using: String.Encoding.utf8, allowLossyConversion: false)!
//do {
//    let json = try JSONSerialization.jsonObject(with: data, options: []) as! [String: AnyObject]
//    if let employees = json["employees"] as? [AnyObject] {
//        print(employees)
//    }
//} catch let error as NSError {
//    print("Failed to load: \(error.localizedDescription)")
//}


//if path = Bundle.main.path(forResource: "Employees", ofType: "json") {
//    do {
//        let data = try Data(contentsOf: URL(fileURLWithPath: path!), options: .mappedIfSafe)
//        let jsonResult = try JSONSerialization.jsonObject(with: data, options: .mutableLeaves)
//        if let jsonResult = jsonResult as? Dictionary<String, AnyObject>, let person = jsonResult["person"] as? [Any] {
//            // do stuff
//        }
//    } catch {
//        // handle error
//    }
//}






// save employees on Dictionary
var payroll = Payroll()
payroll.saveEmployeeOnPayroll(employee: fullTimeEmployee1)
payroll.saveEmployeeOnPayroll(employee: internEmployee1)
payroll.saveEmployeeOnPayroll(employee: partTimeCommissionEmployee1)
payroll.saveEmployeeOnPayroll(employee: partTimeFixedAmountEmployee1)

print(payroll.printMyData())

