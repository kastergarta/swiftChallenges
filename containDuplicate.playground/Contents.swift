import UIKit

func containsDuplicate(_ nums: [Int]) -> Bool {
    
    var distinctSet = Set<Int>()
    for num in nums {
        if distinctSet.contains(num) {
            return true
        } else {
            distinctSet.insert(num)
        }
    }
    return false
}
