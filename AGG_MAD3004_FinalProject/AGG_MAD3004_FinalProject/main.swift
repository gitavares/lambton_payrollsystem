//
//  main.swift
//  Payroll System
//
//  Created by Giselle Tavares on 08/09/18.
//  Copyright © 2018 Giselle Tavares. All rights reserved.
//

import Foundation

// Vehicles - objects
let vehicleCar1 = Car(make: "BMW", plate: "FGH8997", doorsQuantity: 4, hasSunroof: true)
let vehicleCar2 = Car(make: "Mercedez", plate: "YYT8978", doorsQuantity: 2, hasSunroof: false)
let vehicleMotorcycle1 = Motorcycle(make: "Harley-Davidson", plate: "TG55RF", powerCC: 500, hasLuggageRack: true)

// Employees - objects
let fullTimeEmployee1 = FullTime(salary: 5000, bonus: 300, name: "Michael Jackson", age: 53, vehicle: vehicleCar1)
let internEmployee1 = Intern(name: "Sandra de Sa", age: 60, schoolName: "Lambton College", internSalary: 1000, vehicle: vehicleMotorcycle1)
let partTimeCommissionEmployee1 = CommissionBasedPartTime(rate: 30, hoursWorked: 10, name: "John", age: 25, vehicle: vehicleCar2, commissionPerc: 20)
let partTimeFixedAmountEmployee1 = FixedBasedPartTime(rate: 30, hoursWorked: 10, name: "Cindy", age: 40, vehicle: nil, fixedAmount: 40)

// Print Payroll
print(fullTimeEmployee1.printMyData())
print(internEmployee1.printMyData())
print(partTimeCommissionEmployee1.printMyData())
print(partTimeFixedAmountEmployee1.printMyData())
