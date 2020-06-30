import UIKit

struct q66 {
    
    class Solution {
        func plusOne(_ digits: [Int]) -> [Int] {
            
            var digits = digits
            var index = (digits.endIndex - 1)
            var adding = 0
            digits[index] += 1
            
            while index >= digits.startIndex {
                digits[index] += adding
                adding = digits[index] / 10
                if adding > 0 {
                    digits[index] %= 10
                }
                index = (index - 1)
            }
            if adding > 0 {
                digits.insert(adding, at: 0)
            }
            return digits
        }
    }
    
    static func getSolution() -> Void {
        print(Solution().plusOne([1,9]))
        print(Solution().plusOne([9,9]))
    }
}
