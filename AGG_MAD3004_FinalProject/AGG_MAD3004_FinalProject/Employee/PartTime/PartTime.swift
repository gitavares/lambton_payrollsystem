//
//  PartTime.swift
//  Payroll System
//
//  Created by Giselle Tavares on 10/09/18.
//  Copyright © 2018 Giselle Tavares. All rights reserved.
//

import Foundation

class PartTime: Employee {
    var rate: Double?
    var hoursWorked: Double?

    // constructor
//    override init() {
//        self
//    }
    
    init(rate: Double, hoursWorked: Double, name: String, age: Int, vehicle: Vehicle){
        self.rate = rate
        self.hoursWorked = hoursWorked
        super.init(name: name, age: age, vehicle: vehicle)
    }
    
    
//    func setData(rate: Double, hoursWorked: Double) {
//        self.rate = rate
//        self.hoursWorked = hoursWorked
//    }

}
