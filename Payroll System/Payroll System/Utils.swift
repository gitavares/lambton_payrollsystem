//
//  Utils.swift
//  Payroll System
//
//  Created by Giselle Tavares on 10/09/18.
//  Copyright © 2018 Giselle Tavares. All rights reserved.
//

import Foundation

extension Date {
//    var currentYear = Calendar.Component.year
    
    var year: Int {
        let currentYear = Calendar.current
        let comp = currentYear.dateComponents(in: TimeZone.current, from: self)
        
        return comp.year!
    }
}

extension Int {
    var currency: String {
        return "$\(self)"
    }
}
