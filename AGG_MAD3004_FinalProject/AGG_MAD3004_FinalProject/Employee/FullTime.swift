//
//  FullTime.swift
//  Payroll System
//
//  Created by Giselle Tavares on 10/09/18.
//  Copyright © 2018 Giselle Tavares. All rights reserved.
//

import Foundation

internal class FullTime: Employee {
    var salary: Double?
    var bonus: Double?
    
    // constructor
    override init() {
        super.init()
        self.salary = Double()
        self.bonus = Double()
    }
    // This init throws an Exception
    init(salary: Double, bonus: Double, name: String, age: Int, vehicle: Vehicle) throws {
        try validateSalary(salary: salary)
        try validateBonus(bonus: bonus)
        super.init(name: name, age: age, vehicle: vehicle)
        self.salary = salary
        self.bonus = bonus
    }
    
    
//    func setData(salary: Double, bonus: Double) {
//        self.salary = salary
//        self.bonus = bonus
//    }
    
    override func calcEarnings() -> Double {
        return self.salary! + self.bonus!
    }
    
    override func printMyData() -> String {
        var message = super.printMyData()
        message += "Employee is FullTime\n"
        message += "- Salary: \(self.salary!.currency)\n"
        message += "- Bonus: \(self.bonus!.currency)\n"
        message += "- Earnings: \(calcEarnings().currency)\n"
        message += "************************************\n"
        return message
    }
}
