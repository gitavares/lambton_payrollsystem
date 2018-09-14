//
//  IEmployee.swift
//  Payroll System
//
//  Created by Giselle Tavares on 11/09/18.
//  Copyright © 2018 Giselle Tavares. All rights reserved.
//

import Foundation

protocol AbstractEmployee {
    var name: String? { get set }
    var age: Int? { get set }
    var vehicle: Vehicle? { get set }
    
    func calcBirthYear(age: Int) -> Int
    func calcEarnings() -> Double
//    func calcTotalPayroll() -> Double
    func calcTotalPayroll(employees: [Employee]) -> String
    func saveEmployee()
    func setData(name: String, age: Int)
    func printMyData() -> String
}
