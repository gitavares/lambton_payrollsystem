//
//  Employee.swift
//  Payroll System
//
//  Created by Giselle Tavares on 10/09/18.
//  Copyright © 2018 Giselle Tavares. All rights reserved.
//

import Foundation

class Employee: IPrintable {
    // Stored Properties
    var name: String
    var age: Int
    
    // Computed Properties
    var genericSalary: Double {
        return 1000.0
    }
    
    // constructor
    // is mandatory initialize the variable
    init() {
        self.name = String()
        self.age = Int()
    }
    
    init(name: String, age: Int){
        self.name = name
        self.age = age
    }
    
    // setters
    func setData(name: String, age: Int){
        self.name = name
        self.age = age
    }
    
    // methods
    func calcBirthYear(age: Int) -> Int {
        return Date().year - age
    }
    
    func calcEarnings() -> Double {
        return genericSalary
    }
    
    //    func printData(){
    //        print("Faculty: \(self.facultyId) - \(self.facultyName)")
    //    }
}
