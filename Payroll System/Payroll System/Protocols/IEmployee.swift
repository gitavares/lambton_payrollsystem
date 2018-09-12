//
//  IEmployee.swift
//  Payroll System
//
//  Created by Giselle Tavares on 11/09/18.
//  Copyright © 2018 Giselle Tavares. All rights reserved.
//

import Foundation

protocol IEmployee {
    var name: String { get set }
    var age: Int { get set }
    
    func calcBirthYear(age: Int) -> Int
    func calcEarnings() -> Double
}
