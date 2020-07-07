import UIKit

class LongestValidParentheses {
    func longestValidParentheses(_ s: String) -> Int {
        var stack = [Int](), longest = 0, start = 0
        
        for (i, char) in s.enumerated() {
            if char == "(" {
                stack.append(i)
            } else {
                if !stack.isEmpty {
                    stack.removeLast()
                    
                    if let last = stack.last {
                        longest = max(longest, i - last)
                    } else {
                        longest = max(longest, i - start + 1)
                    }
                } else {
                    start = i + 1
                }
            }
        }
        return longest
    }
}
