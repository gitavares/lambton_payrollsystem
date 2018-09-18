//
//  Payroll.swift
//  AGG_MAD3004_FinalProject
//
//  Created by Giselle Tavares on 17/09/18.
//  Copyright © 2018 Giselle Tavares. All rights reserved.
//

import Foundation

class Payroll: IPrintable {
    
    var listOfEmployeesOnPayroll: [Int: Employee]
    var totalPayroll: Double?
    
    init() {
        self.listOfEmployeesOnPayroll = [Int: Employee]()
        self.totalPayroll = Double()
    }
    
    init(listOfEmployeesOnPayroll: [Int: Employee], totalPayroll: Double) {
        self.listOfEmployeesOnPayroll = listOfEmployeesOnPayroll
        self.totalPayroll = totalPayroll
    }
    
    func saveEmployeeOnPayroll(employee: Employee) {
        let id = listOfEmployeesOnPayroll.count
        listOfEmployeesOnPayroll.updateValue(employee, forKey: id)
    }
    
//    func updateEmployeeOnPayroll() {
//
//    }
//
//    func removeEmployeeFromPayroll() {
//
//    }
    
    func calcTotalPayroll() -> Double {
        var totalPayroll = Double()
        for employee in listOfEmployeesOnPayroll {
            totalPayroll += employee.value.calcEarnings()
        }
        return totalPayroll
    }
    
    func printMyData() -> String {
        for employee in listOfEmployeesOnPayroll {
            print(employee.value.printMyData())
        }
        
        var message = "Total of employees: \(listOfEmployeesOnPayroll.count)\n"
        message += "TOTAL PAYROLL: \(calcTotalPayroll().currency) Canadian Dollars"
        message += ""
        return message
    }
    
    
}
