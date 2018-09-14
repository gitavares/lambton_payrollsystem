//
//  AbstractPartTime.swift
//  Payroll System
//
//  Created by Giselle Tavares on 12/09/18.
//  Copyright © 2018 Giselle Tavares. All rights reserved.
//

import Foundation

protocol AbstractPartTime {
    var rate: Double? { get set }
    var hoursWorked: Double? { get set }
    
    func setData(rate: Double, hoursWorked: Double)
    func printMyData() -> String
}
