//
//  Employee.swift
//  Payroll System
//
//  Created by Giselle Tavares on 10/09/18.
//  Copyright © 2018 Giselle Tavares. All rights reserved.
//

import Foundation

class Employee {
    var name: String!
    var age: Int!
    
    func calcBirthYear(age: Int) -> Int {
        return Date().year - age
    }
    
    func calcEarning() -> Double {
        return 1000
    }
}
