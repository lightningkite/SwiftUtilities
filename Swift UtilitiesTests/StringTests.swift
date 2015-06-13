//
//  StringTests.swift
//  SwiftUtilities
//
//  Created by Erik Sargent on 6/12/15.
//
//

import XCTest
import SwiftUtilities

class StringTests: XCTestCase {
    func testCreateStringWithSeperator() {
        let str = String(sep: "-", "1", "2", "3", "4", "5")
        
        XCTAssertEqual(str, "1-2-3-4-5", "The string was not created correctly")
    }
    
    func testCreateMultilineString() {
        let str = String("1", "2", "3", "4", "5")
        
        XCTAssertEqual(str, "1\n2\n3\n4\n5", "The multiline string was not created correctly")
    }
    
    func testStringToDouble() {
        let str = "5.1"
        let num = str.toDouble()
        
        XCTAssertNotNil(num, "The string could not be converted to a double")
        XCTAssertEqual(num!, 5.1, "The string was not converted to a double correctly")
    }
    
    func testStringToDoubleFail() {
        let str = "a"
        let num = str.toDouble()
        
        XCTAssertNil(num, "The string was converted to a double when it shouldn't have been")
    }
}
