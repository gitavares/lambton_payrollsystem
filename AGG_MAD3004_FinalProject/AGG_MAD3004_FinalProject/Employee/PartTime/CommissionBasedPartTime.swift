//
//  CommissionBasedPartTime.swift
//  Payroll System
//
//  Created by Giselle Tavares on 10/09/18.
//  Copyright © 2018 Giselle Tavares. All rights reserved.
//

import Foundation

internal class CommissionBasedPartTime: PartTime
{
    var commisionPerc: Double?
    var rateTimesHoursWorked = PartTime().calcEarnings()
    
    override init() {
        super.init()
        self.commisionPerc = Double()
    }
    
    init(rate: Double, hoursWorked: Double, name: String, age: Int, vehicle: Vehicle?, commissionPerc: Double) {
        super.init(rate: rate, hoursWorked: hoursWorked, name: name, age: age, vehicle: vehicle)
        self.commisionPerc = commissionPerc
    }
    
    override func calcEarnings() -> Double
    {
        rateTimesHoursWorked = super.calcEarnings()
        return (rateTimesHoursWorked * self.commisionPerc!/100) + rateTimesHoursWorked
    }
    
    override func printMyData() -> String {
        var message = super.printMyData()
        message += "Commissioned\n"
        message += "- Rate: \(self.rate!.currency)\n"
        message += "- Hours Worked: \(self.hoursWorked!)\n"
        message += "- Commission: \(self.commisionPerc!.percent)\n"
        message += "- Earnings: \(calcEarnings().currency) (\(rateTimesHoursWorked.currency) + \(self.commisionPerc!.percent) of \(rateTimesHoursWorked.currency))\n"
        message += "************************************\n"
        return message
    }
}
