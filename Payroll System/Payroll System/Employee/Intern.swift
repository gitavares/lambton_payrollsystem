//
//  Intern.swift
//  Payroll System
//
//  Created by Giselle Tavares on 10/09/18.
//  Copyright © 2018 Giselle Tavares. All rights reserved.
//

import Foundation

class Intern: Employee {
    var schoolName: String?
    var internSalary: Double! = 1000.0
    
    init(name: String, age: Int, schoolName: String) {
        super.init(name: name, age: age)
        self.schoolName = schoolName
    }
    
    override func printMyData() -> String {
        let message = "\(name!), \(age!), \(schoolName!), \(internSalary!)"
        return message
    }
}
