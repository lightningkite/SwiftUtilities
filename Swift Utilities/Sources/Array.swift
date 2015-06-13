//
//  Array.swift
//  SwiftUtilities
//
//  Created by Erik Sargent on 6/12/15.
//
//

import Foundation

extension Array {
    func contains<T: Equatable>(item: T) -> Bool {
        for i in self {
            if let i = i as? T where i == item {
                return true
            }
        }
        
        return false
    }
    
    mutating func shuffle() {
        for var i = count - 1; i > 0; i-- {
            let tmp = self[i]
            let j = random() % i
            self[i] = self[j]
            self[j] = tmp
        }
    }
    
    func shuffled() -> Array {
        var shuffled = self
        shuffled.shuffle()
        return shuffled
    }
    
    func max<T: Comparable>() -> T {
        var max = self[0] as! T
        for i in 1..<count {
            if let element = self[i] as? T where element > max {
                max = element
            }
        }
        return max
    }
    
    func min<T: Comparable>() -> T {
        var min = self[0] as! T
        for i in 1..<count {
            if let element = self[i] as? T where element < min {
                min = element
            }
        }
        return min
    }
    
    func each(call: (element: Element, idx: Int) -> ()) {
        for (idx, element) in enumerate(self) {
            call(element: element, idx: idx)
        }
    }
}
