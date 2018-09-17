//
//  Payroll.swift
//  AGG_MAD3004_FinalProject
//
//  Created by Giselle Tavares on 17/09/18.
//  Copyright © 2018 Giselle Tavares. All rights reserved.
//

import Foundation

class Payroll: IPrintable {
    
    var listOfEmployeesOnPayroll: (Int: Employee)
    var totalPayroll: Double?
    
    init() {
        self.listOfEmployeesOnPayroll = [Int: Employee]()
        self.totalPayroll = Double()
    }
    
    init(listOfEmployeesOnPayroll: (Int: Employee), totalPayroll: Double) {
        self.listOfEmployeesOnPayroll = listOfEmployeesOnPayroll
        self.totalPayroll = totalPayroll
    }
    
    func saveEmployeeOnPayroll(employee: Employee) {
        
    }
    
    func updateEmployeeOnPayroll() {
        
    }
    
    func removeEmployeeFromPayroll() {
        
    }
    
    func calcTotalPayroll(listOfEmployeeOnPayroll) {
        
    }
    
    func printMyData() -> String {
        var message = "TOTAL PAYROLL: XXXX Canadian Dollars"
    }
    
    
}
