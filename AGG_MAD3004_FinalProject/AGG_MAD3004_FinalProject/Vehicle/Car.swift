//
//  Car.swift
//  Payroll System
//
//  Created by Giselle Tavares on 10/09/18.
//  Copyright © 2018 Giselle Tavares. All rights reserved.
//

import Foundation

internal class Car: Vehicle {
    var doorsQuantity: Int?
    var hasSunroof: Bool?
    
    override init() {
        super.init()
        self.doorsQuantity = 2
        self.hasSunroof = true
    }
    
    init(make: String, plate: String, doorsQuantity: Int, hasSunroof: Bool) {
        super.init(make: make, plate: plate)
        self.doorsQuantity = doorsQuantity
        self.hasSunroof = hasSunroof
    }
    
    override func printMyData() -> String {
        var message = "Employee has a Car\n"
        message += "- Make: \(self.make!)\n"
        message += "- Plate: \(self.plate!)\n"
        message += "- Doors Quantity: \(self.doorsQuantity!)\n"
        if self.hasSunroof! {
            message += "- The car has Sunroof\n"
        }
        return message
    }
    
    
}
