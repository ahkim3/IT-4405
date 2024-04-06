// Create an iOS Swift extension to the Double type that implements a method titled add that receives a String and returns an optional Double. Implement the extension and test code in an Xcode playground.

import UIKit

extension Double {
    func add(_ value: String) -> Double? {
        if let doubleValue = Double(value) {
            return self + doubleValue
        } else {
            return nil
        }
    }
}

// Test cases
let value1: Double? = 3.5.add("1.2") // value1 will equal 4.7
let value3: Double? = 1.5.add("words") // value will be nil
