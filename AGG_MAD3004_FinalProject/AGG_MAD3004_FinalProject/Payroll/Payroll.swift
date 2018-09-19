//
//  Payroll.swift
//  AGG_MAD3004_FinalProject
//
//  Created by Giselle Tavares on 17/09/18.
//  Copyright © 2018 Giselle Tavares. All rights reserved.
//

import Foundation

internal class Payroll: IPrintable {
    
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
    
    func calcTotalPayroll() -> Double {
        var totalPayroll = Double()
        for employee in listOfEmployeesOnPayroll {
            totalPayroll += employee.value.calcEarnings()
        }
        return totalPayroll
    }
    
    func printMyData() -> String {
        var payrollData = ""
        for employee in listOfEmployeesOnPayroll {
            print(employee.value.printMyData())
            payrollData += employee.value.printMyData()
        }
        
        var message = "Total of employees: \(listOfEmployeesOnPayroll.count)\n"
        message += "TOTAL PAYROLL: \(calcTotalPayroll().currency) Canadian Dollars"
        message += ""
        
        // saving results on TXT file
        let fileName = "payrollTotal"
        let DocumentDirURL = try! FileManager.default.url(for: .documentDirectory, in: .userDomainMask, appropriateFor: nil, create: true)
        let fileURL = DocumentDirURL.appendingPathComponent(fileName).appendingPathExtension("txt")
        payrollData += message
        do {
            // Write to the file
            try payrollData.write(to: fileURL, atomically: true, encoding: String.Encoding.utf8)
        } catch let error as NSError {
            print("Failed writing to URL: \(fileURL), Error: " + error.localizedDescription)
        }
        
        message += "\n\nThe Payroll was saved on: \(DocumentDirURL)\(fileName).txt"
        
        return message
    }
}
