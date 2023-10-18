//
//  Date+Ext.swift
//  GithubFollowers
//
//  Created by irna fitriani on 18/10/23.
//

import Foundation

extension Date {
    
    func convertToMonthYearFormat() -> String {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "MMM yyyy"
        
        return dateFormatter.string(from: self)
        
    }
    
}
