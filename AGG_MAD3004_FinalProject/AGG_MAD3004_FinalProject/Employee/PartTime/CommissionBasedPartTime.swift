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
    
    init(rate: Double, hoursWorked: Double, name: String, age: Int, vehicle: Vehicle, commissionPerc: Double) {
        super.init(rate: rate, hoursWorked: hoursWorked, name: name, age: age, vehicle: vehicle)
        self.commisionPerc = commissionPerc
    }
    
    func calcEarnings(rate: Double, hoursWorked: Double, commisionPerc: Double) -> Double
    {
        var subtotal: Double!
        var commission: Double!
        subtotal = rate * hoursWorked
        commission = (self.commisionPerc!/100) * subtotal
        return (subtotal + commission)
    }
    
    override func printMyData() -> String {
        var message = "Commissioned\n"
        message += "- Rate: \(self.rate!.currency)"
        message += "- Hours Worked: \(self.hoursWorked!)"
        message += "- Commission: \(self.commisionPerc!)"
        let rateTimesHoursWorked = self.rate! * self.hoursWorked!
        message += "- Earnings: \(calcEarnings(rate: self.rate!, hoursWorked: self.hoursWorked!, commisionPerc: self.commisionPerc!).currency) (\(rateTimesHoursWorked) + \(self.commisionPerc?.percent) of \(rateTimesHoursWorked))"
        return message
    }
}
