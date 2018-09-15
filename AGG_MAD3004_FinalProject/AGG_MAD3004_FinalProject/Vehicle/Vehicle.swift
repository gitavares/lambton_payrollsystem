//
//  Vehicle.swift
//  Payroll System
//
//  Created by Giselle Tavares on 10/09/18.
//  Copyright © 2018 Giselle Tavares. All rights reserved.
//

import Foundation

class Vehicle: IPrintable {
    var make: String?
    var plate: String?
    
    init(){
        self.make = ""
        self.plate = ""
    }
    
    init(make: String, plate: String) {
        self.make = make
        self.plate = plate
    }
    
    func printMyData() -> String {
        return ""
    }
}
