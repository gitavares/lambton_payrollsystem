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
    var internSalary: Double?
    
    override init() {
        super.init()
        self.schoolName = String()
        self.internSalary = 1000.0
    }
    
    init(name: String, age: Int, schoolName: String, internSalary: Double, vehicle: Vehicle) {
        super.init(name: name, age: age, vehicle: vehicle)
        self.schoolName = schoolName
        self.internSalary = internSalary
    }
    
    override func calcEarnings() -> Double {
        return self.internSalary!
    }
    
    override func printMyData() -> String {
        var message = super.printMyData()
        message += "Employee is Intern\n"
        message += "- School Name: \(self.schoolName!)\n"
        message += "- Earnings: \(self.internSalary!.currency)\n"
        message += "************************************\n"
        return message
    }
}
