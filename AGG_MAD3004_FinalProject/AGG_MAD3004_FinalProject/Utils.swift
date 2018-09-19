//
//  Utils.swift
//  Payroll System
//
//  Created by Giselle Tavares on 10/09/18.
//  Copyright © 2018 Giselle Tavares. All rights reserved.
//

import Foundation

extension Date {
    var year: Int {
        let currentYear = Calendar.current
        let comp = currentYear.dateComponents(in: TimeZone.current, from: self)
        return comp.year!
    }
}

extension Double {
    var currency: String {
        return "$ \(self)"
    }
    
    var percent: String {
        return "\(self)%"
    }
}

// for JSON file - from stackoverflow - see README.md
extension UserDefaults {
    func decode<T : Codable>(for type : T.Type, using key : String) -> T? {
        let defaults = UserDefaults.standard
        guard let data = defaults.object(forKey: key) as? Data else {return nil}
        let decodedObject = try? PropertyListDecoder().decode(type, from: data)
        return decodedObject
    }
    
    func encode<T : Codable>(for type : T, using key : String) {
        let defaults = UserDefaults.standard
        let encodedData = try? PropertyListEncoder().encode(type)
        defaults.set(encodedData, forKey: key)
        defaults.synchronize()
    }
}
