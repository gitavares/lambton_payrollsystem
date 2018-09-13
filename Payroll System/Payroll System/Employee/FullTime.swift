//
//  FullTime.swift
//  Payroll System
//
//  Created by Giselle Tavares on 10/09/18.
//  Copyright © 2018 Giselle Tavares. All rights reserved.
//

import Foundation

class FullTime: Employee {
    var salary: Double?
    var bonus: Double?
    
    // constructor
    init(salary: Double, bonus: Double, name: String, age: Int){
        self.salary = salary
        self.bonus = bonus
        super.init(name: name, age: age)
    }
    
    func setData(salary: Double, bonus: Double) {
        self.salary = salary
        self.bonus = bonus
    }
    
    override func calcEarnings() -> Double {
        return salary! + bonus!
    }
    
    override func printMyData() -> String {
        let message = "\(name!), \(age!), \(salary!), \(bonus!)"
        return message
    }
}
