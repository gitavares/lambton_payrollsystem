//
//  main.swift
//  Payroll System
//
//  Created by Giselle Tavares on 08/09/18.
//  Copyright © 2018 Giselle Tavares. All rights reserved.
//

import Foundation

// to print some currency -- example
print(1000.currency)

// to print the birth year -- example
let birthYear = Employee()
print(birthYear.calcBirthYear(age: 40))

let fullTimeEmployee = FullTime(salary: 5000, bonus: 300, name: "Michael Jackson", age: 53)
print(fullTimeEmployee)
