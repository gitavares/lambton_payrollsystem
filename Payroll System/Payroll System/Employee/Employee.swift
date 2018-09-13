//
//  Employee.swift
//  Payroll System
//
//  Created by Giselle Tavares on 10/09/18.
//  Copyright © 2018 Giselle Tavares. All rights reserved.
//

import Foundation

// maybe this class won't be necessary

class Employee: IPrintable, AbstractEmployee {
    // Stored Properties
    var name: String?
    var age: Int?
    var vehicle: Vehicle?
    
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
    
    func setData(name: String, age: Int){
        self.name = name
        self.age = age
    }
    
    // methods
    func calcBirthYear(age: Int) -> Int {
        return Date().year - age
    }
    
    func calcEarnings() -> Double {
        return 0
    }
    
    func printMyData() -> String {
        let birthYear = Employee()
        var message = "Name: \(self.name!)"
        message += "Year of Birth: \(birthYear.calcBirthYear(age: self.age!))"
        
        return message
    }
}
