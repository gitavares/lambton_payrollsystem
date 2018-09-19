//
//  PartTime.swift
//  Payroll System
//
//  Created by Giselle Tavares on 10/09/18.
//  Copyright © 2018 Giselle Tavares. All rights reserved.
//

import Foundation

internal class PartTime: Employee {
    var rate: Double?
    var hoursWorked: Double?

    // constructor
    override init() {
        super.init()
        self.rate = Double()
        self.hoursWorked = Double()
    }
    
    init(rate: Double, hoursWorked: Double, name: String, age: Int, vehicle: Vehicle?){
        self.rate = rate
        self.hoursWorked = hoursWorked
        super.init(name: name, age: age, vehicle: vehicle)
    }
    
    override func calcEarnings() -> Double {
        return self.rate! * self.hoursWorked!
    }
    
    override func printMyData() -> String {
        var message = super.printMyData()
        message += "Employee is PartTime / "
        return message
    }

}
