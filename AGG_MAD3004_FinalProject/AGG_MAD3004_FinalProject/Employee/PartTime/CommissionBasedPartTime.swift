//
//  CommissionBasedPartTime.swift
//  Payroll System
//
//  Created by Giselle Tavares on 10/09/18.
//  Copyright © 2018 Giselle Tavares. All rights reserved.
//

import Foundation

class CommissionBasedPartTime: PartTime
{
    var commissionPerc: Double = 0.0
    func calcEarnings(rate: Double, hoursWorked: Int, commissionPerc: Double) -> Double
    {
        var subtotal: Double!
        var commission: Double!
        subtotal = rate * Double(hoursWorked)
        commission = (commissionPerc/100) * subtotal
        return (subtotal + commission)
    }
    
}
