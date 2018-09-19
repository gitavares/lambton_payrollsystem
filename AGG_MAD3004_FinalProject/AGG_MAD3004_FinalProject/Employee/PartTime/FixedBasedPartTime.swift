//
//  FixedBasedPartTime.swift
//  Payroll System
//
//  Created by Giselle Tavares on 10/09/18.
//  Copyright © 2018 Giselle Tavares. All rights reserved.
//

import Foundation

internal class FixedBasedPartTime: PartTime
{
    var fixedAmount: Double?
    var rateTimesHoursWorked = PartTime().calcEarnings()
    
    override init() {
        super.init()
        self.fixedAmount = Double()
    }
    
    // This init throws an Exception
    init(rate: Double, hoursWorked: Double, name: String, age: Int, vehicle: Vehicle?, fixedAmount: Double) throws {
        try validateFixedAmount(fixedAmount: fixedAmount)
        try super.init(rate: rate, hoursWorked: hoursWorked, name: name, age: age, vehicle: vehicle)
        self.fixedAmount = fixedAmount
    }
    
    override func calcEarnings() -> Double
    {
        rateTimesHoursWorked = super.calcEarnings()
        return self.fixedAmount! + rateTimesHoursWorked
    }
    
    override func printMyData() -> String {
        var message = super.printMyData()
        message += "Fixed Amount\n"
        message += "- Rate: \(self.rate!.currency)\n"
        message += "- Hours Worked: \(self.hoursWorked!)\n"
        message += "- Fixed Amount: \(self.fixedAmount!.currency)\n"
        message += "- Earnings: \(calcEarnings().currency) (\(rateTimesHoursWorked.currency) + \(self.fixedAmount!.currency))\n"
        message += "************************************\n"
        return message
    }
    
    
}
