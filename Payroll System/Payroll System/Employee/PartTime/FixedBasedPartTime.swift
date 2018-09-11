//
//  FixedBasedPartTime.swift
//  Payroll System
//
//  Created by Giselle Tavares on 10/09/18.
//  Copyright © 2018 Giselle Tavares. All rights reserved.
//

import Foundation

class FixedBasedPartTime: PartTime
{
    var FixedAmmount: Double!
    func calcEarnings(Rate: Double, HoursWorked: Double) -> Double
    {
        return (Rate * HoursWorked + FixedAmmount)
    }
}
