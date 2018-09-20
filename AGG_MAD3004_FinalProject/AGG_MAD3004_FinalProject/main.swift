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
let vehicleMotorcycle1 = Motorcycle(make: "Harley-Davidson", plate: "TG55RF", powerCC: 500, hasLuggageRack: true)

// Employees - objects and try catch
do {
    let fullTimeEmployee1 = try FullTime(salary: 5000, bonus: 300, name: "Michael Jackson", age: 53, vehicle: vehicleCar1)
    let internEmployee1 = try Intern(name: "Sandra de Sa", age: 60, schoolName: "Lambton College", internSalary: 1000, vehicle: vehicleMotorcycle1)
    let partTimeCommissionEmployee1 = try CommissionBasedPartTime(rate: 30, hoursWorked: 10, name: "John", age: 25, vehicle: vehicleCar2, commissionPerc: 20)
    let partTimeFixedAmountEmployee1 = try FixedBasedPartTime(rate: 30, hoursWorked: 10, name: "Cindy", age: 40, vehicle: nil, fixedAmount: 40)
    
    //save employees on Dictionary
    let payroll = Payroll()
    payroll.saveEmployeeOnPayroll(employee: fullTimeEmployee1)
    payroll.saveEmployeeOnPayroll(employee: internEmployee1)
    payroll.saveEmployeeOnPayroll(employee: partTimeCommissionEmployee1)
    payroll.saveEmployeeOnPayroll(employee: partTimeFixedAmountEmployee1)
    print(payroll.printMyData())
    print("\n\(sep1)")
    
    // -------------------------------------------------
    // This case is only for Testing the Error Handling:
    let partTimeFixedAmountEmployee2 = try FixedBasedPartTime(rate: 30, hoursWorked: 0, name: "ERROL GARNER", age: 40, vehicle: nil, fixedAmount: 40)
    print(partTimeFixedAmountEmployee2.printMyData())

} catch EarningsError.NonZero {
    print("\nERROR!!! Earnings must be greater than zero!\n")
    print(sep2)
} catch EarningsError.NonNegative {
    print("\nERROR!!! Earnings must be greater than zero!\n")
    print(sep2)
} catch EarningsError.LessThanTwoThousand {
    print("\nERROR!!! Earnings must be greater than $ 2000.00\n")
    print(sep2)
} catch BonusError.NonZero {
    print("\nERROR!!! Bonus must be greater than zero!\n")
    print(sep2)
} catch BonusError.NonNegative {
    print("\nERROR!!! Bonus must be greater than zero!\n")
    print(sep2)
} catch InternSalaryError.NonZero {
    print("\nERROR!!! Intern salary must be greater than zero!")
    print(sep2)
} catch InternSalaryError.NonNegative {
    print("\nERROR!!! Intern salary must be greater than zero!")
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



