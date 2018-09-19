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
    case NonNegative
    case LessThanTwoThousand
}

enum BonusError: Error {
    case NonZero
    case NonNegative
}

enum InternSalaryError: Error {
    case NonZero
    case NonNegative
}

enum RateError: Error {
    case NonZero
    case NonNegative
}

enum HoursWorkedError: Error {
    case NonZero
    case NonNegative
}

enum CommissionError: Error {
    case NonZero
    case NonNegative
}

enum FixedAmountError: Error {
    case NonZero
    case NonNegative
}

func validateSalary(salary: Double) throws {
    if salary == 0 {
        throw EarningsError.NonZero
    } else if salary < 0 {
        throw EarningsError.NonNegative
    } else if salary < 2000 {
        throw EarningsError.LessThanTwoThousand
    }
}

func validateBonus(bonus: Double) throws {
    if bonus == 0 {
        throw BonusError.NonZero
    } else if bonus < 0 {
        throw BonusError.NonNegative
    }
}

func validateInternSalary(internSalary: Double) throws {
    if internSalary == 0 {
        throw InternSalaryError.NonZero
    } else if internSalary < 0 {
        throw InternSalaryError.NonNegative
    }
}

func validateRate(rate: Double) throws {
    if rate == 0 {
        throw RateError.NonZero
    } else if rate < 0 {
        throw RateError.NonNegative
    }
}

func validateHoursWorked(hoursWorked: Double) throws {
    if hoursWorked == 0 {
        throw HoursWorkedError.NonZero
    } else if hoursWorked < 0 {
        throw HoursWorkedError.NonNegative
    }
}

func validateCommission(commission: Double) throws {
    if commission == 0 {
        throw CommissionError.NonZero
    } else if commission < 0 {
        throw CommissionError.NonNegative
    }
}

func validateFixedAmount(fixedAmount: Double) throws {
    if fixedAmount == 0 {
        throw FixedAmountError.NonZero
    } else if fixedAmount < 0 {
        throw FixedAmountError.NonNegative
    }
}
