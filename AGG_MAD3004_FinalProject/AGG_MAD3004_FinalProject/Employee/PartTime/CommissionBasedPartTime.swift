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
    var commisionPerc: Double?
    
    override init() {
        super.init()
        self.commisionPerc = Double()
    }
    
    init(rate: Double, hoursWorked: Double, name: String, age: Int, vehicle: Vehicle?, commissionPerc: Double) {
        super.init(rate: rate, hoursWorked: hoursWorked, name: name, age: age, vehicle: vehicle)
        self.commisionPerc = commissionPerc
    }
    
    func calcEarnings(rateTimesHoursWorked: Double, commisionPerc: Double) -> Double
    {
        return (self.commisionPerc!/100) * rateTimesHoursWorked + rateTimesHoursWorked
    }
    
    override func printMyData() -> String {
        var message = super.printMyData()
        message += "Commissioned\n"
        message += "- Rate: \(self.rate!.currency)\n"
        message += "- Hours Worked: \(self.hoursWorked!)\n"
        message += "- Commission: \(self.commisionPerc!.percent)\n"
        let rateTimesHoursWorked = self.rate! * self.hoursWorked!
        message += "- Earnings: \(calcEarnings(rateTimesHoursWorked: rateTimesHoursWorked, commisionPerc: self.commisionPerc!).currency) (\(rateTimesHoursWorked.currency) + \(self.commisionPerc!.percent) of \(rateTimesHoursWorked.currency))\n"
        message += "************************************\n"
        return message
    }
}
