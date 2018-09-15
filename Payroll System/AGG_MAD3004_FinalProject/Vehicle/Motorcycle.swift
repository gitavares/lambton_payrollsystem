//
//  Motorcycle.swift
//  Payroll System
//
//  Created by Giselle Tavares on 10/09/18.
//  Copyright © 2018 Giselle Tavares. All rights reserved.
//

import Foundation

class Motorcycle: Vehicle {
    var cylindersQuantity: Int?
    var hasLuggageRack: Bool?
    
    override init() {
        super.init()
        self.cylindersQuantity = 2
        self.hasLuggageRack = true
    }
    
    init(make: String, plate: String, cylindersQuantity: Int, hasLuggageRack: Bool) {
        super.init(make: make, plate: plate)
        self.cylindersQuantity = cylindersQuantity
        self.hasLuggageRack = hasLuggageRack
    }
    
    override func printMyData() -> String {
        var message = "Employee has a Motorcycle\n"
        message += "- Make: \(self.make!)\n"
        message += "- Plate: \(self.plate!)\n"
        message += "- Cylinders Quantity: \(self.cylindersQuantity!)\n"
        if self.hasLuggageRack! {
            message += "- The motorcycle has Luggage Rack\n"
        }
        return message
    }
}
