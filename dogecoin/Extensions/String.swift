//
//  String.swift
//  dogecoin
//
//  Created by Zechariah Singh on 25/9/21.
//

import Foundation

extension String {
    var dateFormatter: DateFormatter {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "yyyy-MM-dd'T'HH:mm:ss"
        return dateFormatter
    }
    
    var stringFormatter: DateFormatter {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "dd/MM/yyyy"
        return dateFormatter
    }
    
    func getDate() -> Date? {
        return dateFormatter.date(from: self)
    }
    
    func getDateString() -> String? {
        guard let date = getDate() else { return nil }
        return stringFormatter.string(from: date)
    }
}
