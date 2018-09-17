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
    var fixedAmount: Double?
    
    override init() {
        super.init()
        self.fixedAmount = Double()
    }
    
    init(rate: Double, hoursWorked: Double, name: String, age: Int, vehicle: Vehicle?, fixedAmount: Double) {
        super.init(rate: rate, hoursWorked: hoursWorked, name: name, age: age, vehicle: vehicle)
        self.fixedAmount = fixedAmount
    }
    
    func calcEarnings(rateTimesHoursWorked: Double, fixedAmount: Double) -> Double
    {
        return rateTimesHoursWorked + self.fixedAmount!
    }
    
    override func printMyData() -> String {
        var message = super.printMyData()
        message += "Fixed Amount\n"
        message += "- Rate: \(self.rate!.currency)\n"
        message += "- Hours Worked: \(self.hoursWorked!)\n"
        message += "- Fixed Amount: \(self.fixedAmount!.currency)\n"
        let rateTimesHoursWorked = self.rate! * self.hoursWorked!
        message += "- Earnings: \(calcEarnings(rateTimesHoursWorked: rateTimesHoursWorked, fixedAmount: self.fixedAmount!).currency) (\(rateTimesHoursWorked.currency) + \(self.fixedAmount!.currency))\n"
        message += "************************************\n"
        return message
    }
    
    
}
