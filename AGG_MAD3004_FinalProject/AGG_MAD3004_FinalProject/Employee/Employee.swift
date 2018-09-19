//
//  Employee.swift
//  Payroll System
//
//  Created by Giselle Tavares on 10/09/18.
//  Copyright © 2018 Giselle Tavares. All rights reserved.
//

import Foundation

// maybe this class won't be necessary

internal class Employee: IPrintable, Error {
    var name: String?
    var age: Int?
    var vehicle: Vehicle?
    
    // constructor
    init() {
        self.name = String()
        self.age = Int()
        self.vehicle = Vehicle()
    }
    
    init(name: String, age: Int, vehicle: Vehicle?){
        self.name = name
        self.age = age
        self.vehicle = vehicle
    }
    
    // methods
    func calcBirthYear(age: Int) -> Int {
        return Date().year - age
    }
    
    func calcEarnings() -> Double {
        return 0
    }
    
    func printMyData() -> String {
        let birthYear = Employee()
        var message = "Name: \(self.name!)\n"
        message += "Year of Birth: \(birthYear.calcBirthYear(age: self.age!))\n"
        if vehicle == nil {
            message += "Employee has no Vehicle registered\n"
        } else {
            message += (vehicle?.printMyData())!
        }
        return message
    }
}
