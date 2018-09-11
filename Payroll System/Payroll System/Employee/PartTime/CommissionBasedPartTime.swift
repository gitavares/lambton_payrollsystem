//
//  CommissionBasedPartTime.swift
//  Payroll System
//
//  Created by Giselle Tavares on 10/09/18.
//  Copyright © 2018 Giselle Tavares. All rights reserved.
//

import Foundation

class CommissionBasedPartTime: PartTime {
    var CommisionPerc: Double = 30
    func calcEarnings(Rate: Double, HoursWorked: Int) -> Double
    {
        var Subtotal: Double!
        var Commision: Double!
            Subtotal = Rate * Double(HoursWorked)
            Commision = (CommisionPerc/100) * Subtotal
        return (Subtotal + Commision)
    }
}
