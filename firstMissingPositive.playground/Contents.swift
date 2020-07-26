import UIKit

class FirstMissingPositive {
    func firstMissingPositive(_ nums: [Int]) -> Int {
        let set = Set(nums)
        
        for i in 0..<nums.count {
            if !set.contains(i + 1) {
                return i + 1
            }
        }
        
        return nums.count + 1
    }
}
