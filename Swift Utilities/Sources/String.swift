//
//  String.swift
//  SwiftUtilities
//
//  Created by Erik Sargent on 6/12/15.
//
//

import Foundation


extension String {
    /**
    Initializes a string seperated by sep
    */
    init(sep:String, _ lines:String...){
        self = ""
        for (idx, item) in enumerate(lines) {
            self += "\(item)"
            if idx < lines.count-1 {
                self += sep
            }
        }
    }
    
    /**
    Initializes a multiline string
    */
    init(_ lines:String...){
        self = ""
        for (idx, item) in enumerate(lines) {
            self += "\(item)"
            if idx < lines.count-1 {
                self += "\n"
            }
        }
    }
    
    /**
    Tries to convert a string to a double
    */
    func toDouble() -> Double? {
        let formatter = NSNumberFormatter()
        
        if let number = formatter.numberFromString(self) as? Double {
            return number
        } else {
            return nil
        }
    }
}