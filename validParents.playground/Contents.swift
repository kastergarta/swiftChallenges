import UIKit

struct q20 {
    
    class Solution {
        func isValid(_ s: String) -> Bool {
            let rule = Array("()[]{}")
            var stack = [Character]()
            for (_, char) in s.enumerated() {
                if rule.firstIndex(of: char)! % 2 == 0 {    // open brackets
                    stack.append(char)
                } else {                            // close brackets
                    if stack.isEmpty {
                        return false
                    } else {
                        if rule.firstIndex(of: char)! - rule.index(of: stack.last!)! == 1 {  //barckets matched
                            stack.removeLast()
                        } else {
                            return false
                        }
                    }
                }
            }
            return stack.isEmpty
        }
    }
}
