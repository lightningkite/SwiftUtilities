//
//  NSDateTests.swift
//  SwiftUtilities
//
//  Created by Erik Sargent on 6/12/15.
//
//

import XCTest
import SwiftUtilities

class NSDateTests: XCTestCase {
    let TZOffset = Double(NSTimeZone.localTimeZone().secondsFromGMT) as NSTimeInterval - 3600
    
    func testCreateNSDateFromPythonDateTime() {
        let date = NSDate(datetime: "2001-01-01T0:01:30")
        
        XCTAssertEqual(date.timeIntervalSinceReferenceDate, -TZOffset + 90, "The date time object was not converted correctly")
    }
    
    func testCreateNSDateFromPythonDate() {
        let date = NSDate(date: "2001-01-01")
        
        XCTAssertEqual(date.timeIntervalSinceReferenceDate, -TZOffset, "The date object was not converted correctly")
    }
    
    func testNSDateFormatting() {
        let date = NSDate(timeIntervalSinceReferenceDate: -TZOffset)
        
        XCTAssertEqual(date.formatToString("yyyy-MM-dd"), "2001-01-01", "The NSDate was not correctly formatted to a string")
    }
}
