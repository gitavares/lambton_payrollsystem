//
//  Employee.swift
//  Payroll System
//
//  Created by Giselle Tavares on 10/09/18.
//  Copyright © 2018 Giselle Tavares. All rights reserved.
//

import Foundation

// maybe this class won't be necessary

class Employee: IPrintable, AbstractEmployee {
    // Stored Properties
    var name: String?
    var age: Int?
    var vehicle: Vehicle?
    
    // constructor
    // is mandatory initialize the variable
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
    
//    func setData(name: String, age: Int, vehicle: Vehicle?){
//        self.name = name
//        self.age = age
//        self.vehicle = vehicle
//    }
    
    // methods
    func calcBirthYear(age: Int) -> Int {
        return Date().year - age
    }
    
    func calcEarnings() -> Double {
        return 0
    }
    
    func calcTotalPayroll(employees: [Employee]) -> String {
        var totalPayroll = 0
        for employee in employees {
            totalPayroll += 0 // update it here. See how to get the earnings of each kind of employee
        }
        
        return "TOTAL PAYROLL: \(totalPayroll) Canadian Dollars"
    }
    
    func saveEmployee() {
        // save in a dictionary first
        // a plus is to save on JSON file
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
