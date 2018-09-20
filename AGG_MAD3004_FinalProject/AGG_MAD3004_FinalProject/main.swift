//
//  main.swift
//  Payroll System
//
//  Created by Giselle Tavares on 08/09/18.
//  Copyright © 2018 Giselle Tavares. All rights reserved.
//

import Foundation

// read all these objects from a JSON file and put it in the dictionary
//Line separators
let sep1 = String(repeating: "=", count: 50)
let sep2 = String(repeating: ">", count: 50)

// Vehicles - objects
let vehicleCar1 = Car(make: "BMW", plate: "FGH8997", doorsQuantity: 4, hasSunroof: true)
let vehicleCar2 = Car(make: "Mercedez", plate: "YYT8978", doorsQuantity: 2, hasSunroof: false)
let vehicleCar3 = Car(make: "Jeep", plate: "GGT6578", doorsQuantity: 4, hasSunroof: true)
let vehicleMotorcycle1 = Motorcycle(make: "Harley-Davidson", plate: "TG55RF", powerCC: 600, hasLuggageRack: true)
let vehicleMotorcycle2 = Motorcycle(make: "BMW", plate: "YYT8765", powerCC: 250, hasLuggageRack: false)
let vehicleMotorcycle3 = Motorcycle(make: "Harley-Davidson", plate: "BPT8711", powerCC: 600, hasLuggageRack: false)

// Employees - objects and try catch
do {
    let fullTimeEmployee1 = try FullTime(salary: 5000, bonus: 300, name: "Michael Jackson", age: 53, vehicle: vehicleCar1)
    let internEmployee1 = Intern(name: "Sandra de Sa", age: 60, schoolName: "Lambton College", vehicle: vehicleMotorcycle1)
    let partTimeCommissionEmployee1 = try CommissionBasedPartTime(rate: 30, hoursWorked: 35, name: "John", age: 25, vehicle: vehicleCar2, commissionPerc: 20)
    let partTimeFixedAmountEmployee1 = try FixedBasedPartTime(rate: 30, hoursWorked: 15, name: "Cindy", age: 40, vehicle: nil, fixedAmount: 40)
    let fullTimeEmployee2 = try FullTime(salary: 4000, bonus: 700, name: "Brad Pitt", age: 30, vehicle: vehicleMotorcycle3)
    let internEmployee2 = Intern(name: "Lisa Simpson", age: 60, schoolName: "Lambton College Sarnia", vehicle: nil)
    let partTimeCommissionEmployee2 = try CommissionBasedPartTime(rate: 65, hoursWorked: 80, name: "Wonder Woman", age: 37, vehicle: nil, commissionPerc: 15)
    let partTimeFixedAmountEmployee2 = try FixedBasedPartTime(rate: 20, hoursWorked: 40, name: "Peter Parker", age: 40, vehicle: vehicleCar3, fixedAmount: 40)
    
    //save employees on Dictionary
    let payroll = Payroll()
    payroll.saveEmployeeOnPayroll(employee: fullTimeEmployee1)
    payroll.saveEmployeeOnPayroll(employee: internEmployee1)
    payroll.saveEmployeeOnPayroll(employee: partTimeCommissionEmployee1)
    payroll.saveEmployeeOnPayroll(employee: partTimeFixedAmountEmployee1)
    payroll.saveEmployeeOnPayroll(employee: fullTimeEmployee2)
    payroll.saveEmployeeOnPayroll(employee: internEmployee2)
    payroll.saveEmployeeOnPayroll(employee: partTimeCommissionEmployee2)
    payroll.saveEmployeeOnPayroll(employee: partTimeFixedAmountEmployee2)
    print(payroll.printMyData())
    print("\n\(sep1)")
    
    // -------------------------------------------------
    // This case is only for Testing the Error Handling:
    let partTimeFixedAmountEmployee3 = try FixedBasedPartTime(rate: 30, hoursWorked: 0, name: "ERROL GARNER", age: 40, vehicle: nil, fixedAmount: 40)
    print(partTimeFixedAmountEmployee3.printMyData())
    

} catch SalaryFullTimeError.NonZero {
    print("\nERROR!!! Salary must be greater than zero!\n")
    print(sep2)
} catch SalaryFullTimeError.NonNegative {
    print("\nERROR!!! Salary must be greater than zero!\n")
    print(sep2)
} catch SalaryFullTimeError.LessThanTwoThousand {
    print("\nERROR!!! Salary must be greater than $ 2000.00\n")
    print(sep2)
} catch BonusError.NonZero {
    print("\nERROR!!! Bonus must be greater than zero!\n")
    print(sep2)
} catch BonusError.NonNegative {
    print("\nERROR!!! Bonus must be greater than zero!\n")
    print(sep2)
} catch RateError.NonZero {
    print("\nERROR!!! Rate must be greater than zero!")
    print(sep2)
} catch RateError.NonNegative {
    print("\nERROR!!! Rate must be greater than zero!")
    print(sep2)
} catch HoursWorkedError.NonZero {
    print("\nERROR!!! Hours Worked must be greater than zero!")
    print(sep2)
} catch HoursWorkedError.NonNegative {
    print("\nERROR!!! Hours Worked must be greater than zero!")
    print(sep2)
} catch CommissionError.NonZero {
    print("\nERROR!!! Commission Percentual must be greater than zero!")
    print(sep2)
} catch CommissionError.NonNegative {
    print("\nERROR!!! Commission Percentual must be greater than zero!")
    print(sep2)
} catch FixedAmountError.NonZero {
    print("\nERROR!!! Fixed Amount must be greater than zero!")
    print(sep2)
} catch FixedAmountError.NonNegative {
    print("\nERROR!!! Fixed Amount must be greater than zero!")
    print(sep2)
} catch {
    print(error)
}


// call data from JSON - without any treatment. It's just showing data.
//var callJSONData = JSONCall()
//callJSONData.callJSON()



