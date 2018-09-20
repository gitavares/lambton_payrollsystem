//
//  Intern.swift
//  Payroll System
//
//  Created by Giselle Tavares on 10/09/18.
//  Copyright © 2018 Giselle Tavares. All rights reserved.
//

import Foundation

internal class Intern: Employee {
    var schoolName: String?
    
    override init() {
        super.init()
        self.schoolName = String()
    }
   
    // This init throws an Exception
    init(name: String, age: Int, schoolName: String, vehicle: Vehicle?) {
        super.init(name: name, age: age, vehicle: vehicle)
        self.schoolName = schoolName
    }
    
    override func calcEarnings() -> Double {
        return super.calcEarnings()
    }
    
    override func printMyData() -> String {
        var message = super.printMyData()
        message += "Employee is Intern\n"
        message += "- School Name: \(self.schoolName!)\n"
        message += "- Earnings: \(super.calcEarnings().currency)\n"
        message += "************************************\n"
        return message
    }
}
