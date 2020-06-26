import UIKit

struct q27 {
    
    class Solution {
        func removeElement(_ nums: inout [Int], _ val: Int) -> Int {
            var checkIndex = nums.startIndex
            var contentIndex = nums.startIndex
            while checkIndex < nums.endIndex {
                if nums[checkIndex] != val {
                    nums[contentIndex] = nums[checkIndex]
                    contentIndex += 1
                }
                checkIndex += 1
            }
            return contentIndex
        }
    }
    
    class Solution2 {
        func removeElement(_ nums: inout [Int], _ val: Int) -> Int {
            var lastIndex = (nums.endIndex - 1)
            var checkIndex = nums.startIndex
            while checkIndex <= lastIndex {
                if nums[checkIndex] == val {
                    nums[checkIndex] = nums[lastIndex]
                    lastIndex -= 1
                } else {
                    checkIndex += 1
                }
            }
            return lastIndex + 1
        }
    }
}
