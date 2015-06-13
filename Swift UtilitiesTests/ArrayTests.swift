//
//  ArrayTests.swift
//  SwiftUtilities
//
//  Created by Erik Sargent on 6/12/15.
//
//

import XCTest
import SwiftUtilities

class ArrayTests: XCTestCase {
    func testContainsTrue() {
        let arr = [1, 2, 3]
        
        XCTAssertTrue(arr.contains(1), "The array does not contain 1")
        XCTAssertTrue(arr.contains(2), "The array does not contain 2")
        XCTAssertTrue(arr.contains(3), "The array does not contain 3")
    }
    
    func testContainsFalse() {
        let arr = [1, 2, 3]
        
        XCTAssertFalse(arr.contains(4), "The array should not contains 4")
    }
    
    func testShuffle() {
        let data = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
        var arr = data
        arr.shuffle()
        
        XCTAssertNotEqual(arr, data, "The arrays are identical")
        for i in data {
            XCTAssertTrue(arr.contains(i), "The array no longer contains \(i)")
        }
    }
    
    func testShuffled() {
        let arr = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
        let shuffled = arr.shuffled()
        
        XCTAssertNotEqual(arr, shuffled, "The arrays are identical")
        for i in arr {
            XCTAssertTrue(shuffled.contains(1), "The array no longer contains \(i)")
        }
    }
    
    func testMax() {
        let arr = [1, 2, 3, 4, 5]
        XCTAssertEqual(arr.max(), 5, "The max value was incorrect")
    }
    
    func testMin() {
        let arr = [1, 2, 3, 4, 5]
        XCTAssertEqual(arr.min(), 1, "The min value was incorrect")
    }
    
    func testEach() {
        let arr = [1, 2, 3, 4, 5]
        var count = 0
        arr.each { (element, idx) in
            XCTAssertEqual(element, idx + 1, "The element was incorrect")
            count++
        }
        XCTAssertEqual(count, arr.count, "Each was not called the proper number of times")
    }
}
