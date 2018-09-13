//
//  AbstractVehicle.swift
//  Payroll System
//
//  Created by Giselle Tavares on 12/09/18.
//  Copyright © 2018 Giselle Tavares. All rights reserved.
//

import Foundation

protocol AbstractVehicle {
    var make: String? { get set }
    var plate: String? { get set }
    
    func printMyData() -> String
}
