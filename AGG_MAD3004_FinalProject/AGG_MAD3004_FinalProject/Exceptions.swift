//
//  Exceptions.swift
//  AGG_MAD3004_FinalProject
//
//  Created by Giselle Tavares on 17/09/18.
//  Copyright © 2018 Giselle Tavares. All rights reserved.
//

import Foundation

// Exceptions
enum EarningsError: Error {
    case NonZero
    case NonNegative(s: Double)
    case LessThanTwoThousand
}

enum RateError: Error {
    case NonZero
    case NonNegative(s: Double)
    case LessThanTwoThousand
}

enum ComissionError: Error {
    case NonZero
    case NonNegative(s: Double)
    case LessThanTwoThousand
}

enum HoursWorkedError: Error {
    case NonZero
    case NonNegative(s: Double)
    case LessThanTwoThousand
}

enum FixedAmountError: Error {
    case NonZero
    case NonNegative(s: Double)
    case LessThanTwoThousand
}

func validateSalary(salary: Double) throws -> Bool {
    if salary == 0 {
        throw EarningsError.NonZero
    } else if salary < 0 {
        throw EarningsError.NonNegative(s: salary)
    } else if salary < 2000 {
        throw EarningsError.LessThanTwoThousand
    }
    return true
}

//do {
//    print(try validateSalary(salary: 1000))
//} catch EarningsError.NonZero {
//    print("validateSalary: NonZero")
//} catch EarningsError.NonNegative(let s) {
//    print("validateSalary: NonNegative \(s)")
//} catch EarningsError.LessThanTwoThousand {
//    print("validateSalary: LessThanTwoThousand")
//} catch {
//    print(error)
//}
