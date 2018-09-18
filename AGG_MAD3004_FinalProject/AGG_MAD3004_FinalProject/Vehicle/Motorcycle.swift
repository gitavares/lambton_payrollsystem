//
//  Motorcycle.swift
//  Payroll System
//
//  Created by Giselle Tavares on 10/09/18.
//  Copyright © 2018 Giselle Tavares. All rights reserved.
//

import Foundation

class Motorcycle: Vehicle {
    var powerCC: Int?
    var hasLuggageRack: Bool?
    
    override init() {
        super.init()
        self.powerCC = 2
        self.hasLuggageRack = true
    }
    
    init(make: String, plate: String, powerCC: Int, hasLuggageRack: Bool) {
        super.init(make: make, plate: plate)
        self.powerCC = powerCC
        self.hasLuggageRack = hasLuggageRack
    }
    
    override func printMyData() -> String {
        var message = "Employee has a Motorcycle\n"
        message += "- Make: \(self.make!)\n"
        message += "- Plate: \(self.plate!)\n"
        message += "- Power CC: \(self.powerCC!)\n"
        if self.hasLuggageRack! {
            message += "- The motorcycle has Luggage Rack\n"
        }
        return message
    }
}
