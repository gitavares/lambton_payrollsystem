//
//  main.swift
//  Payroll System
//
//  Created by Giselle Tavares on 08/09/18.
//  Copyright © 2018 Giselle Tavares. All rights reserved.
//

import Foundation

// to print some currency -- example
//print(1000.currency)

// to print the birth year -- example
//let birthYear = Employee()
//print(birthYear.calcBirthYear(age: 40))

let vehicleCar = Car(make: "BMW", plate: "FGH8997", doorsQuantity: 4, hasSunroof: true)
let vehicleMotorcycle = Motorcycle(make: "Harley-Davidson", plate: "TG55RF", cylindersQuantity: 500, hasLuggageRack: true)

let fullTimeEmployee = FullTime(salary: 5000, bonus: 300, name: "Michael Jackson", age: 53, vehicle: vehicleCar)
//print(fullTimeEmployee)
print(fullTimeEmployee.printMyData())

let internEmployee = Intern(name: "Sandra de Sa", age: 60, schoolName: "Lambton College", internSalary: 1000, vehicle: vehicleMotorcycle)
print(internEmployee.printMyData())


//var s1 = Student(studentId: 1, studentName: "Gi") // to create a new object with the Student type
////s1.studentId = 1
////s1.studentName = "Gi"
//s1.printData()
//
//var s2 = s1
//s2.printData()
//
//s1.studentName = "New Student Name"
//s1.printData()
//s2.printData()
//
//var s3 = Student(studentId: 1000, studentName: "Test Student")
//
//var f1 = Faculty() // to create a new object with the Faculty type
//f1.facultyId = 1
//f1.facultyName = "Tavares"
////f1.salary = 1000 // return an error. it's a computer calculate. you cant calculate it
//f1.printData()
//
//var f2 = f1
//f2.printData()
//
//f1.facultyName = "New Faculty Name"
//f1.printData()
//f2.printData()
