// Create an iOS Swift extension to the String type that adds a method titled add that receives an Int and returns an optional Int. Implement the extension and test code in an Xcode playground.

import UIKit

extension String {
    func add(_ value: Int) -> Int? {
        if let intValue = Int(self) {
            return intValue + value
        } else {
            return nil
        }
    }
}

// Test cases
let value1: Int? = "5".add(3) // value1 will equal 8
let value2: Int? = "-2".add(1) // value2 will equal -1
let value3: Int? = "words".add(4) // value2 will be nil
