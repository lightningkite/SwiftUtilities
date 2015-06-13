//
//  NSDate.swift
//  SwiftUtilities
//
//  Created by Erik Sargent on 6/12/15.
//
//

import Foundation

extension NSDate {
    /**
    Initializes an NSDate object from a python datetime string
    */
    convenience init(datetime: String) {
        let dateFormatter = NSDateFormatter()
        dateFormatter.dateFormat = "yyyy-MM-dd'T'HH:mm:ss"
        
        if let date = dateFormatter.dateFromString(datetime) {
            self.init(timeInterval: 0, sinceDate: date)
        }
        else {
            self.init()
        }
    }
    
    
    /**
    Initializes an NSDate object from a python date string
    */
    convenience init(date: String) {
        let dateFormatter = NSDateFormatter()
        dateFormatter.dateFormat = "yyyy-MM-dd"
        
        if let date = dateFormatter.dateFromString(date) {
            self.init(timeInterval: 0, sinceDate: date)
        }
        else {
            self.init()
        }
    }
    
    
    /**
    Formats the date to the format and returns it as a string
    */
    func formatToString(dateFormat: String) -> String {
        var formatter = NSDateFormatter();
        formatter.dateFormat = dateFormat;
        formatter.locale = NSLocale.currentLocale()
        
        return formatter.stringFromDate(self)
    }
}