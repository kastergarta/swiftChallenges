import UIKit

func binarySearch(value: Int, array: [Int]) -> Bool {
    
    var leftIdx = 0
    var rightIdx = array.count - 1
    
    while leftIdx <= rightIdx {
        let middleIdx = (leftIdx + rightIdx) / 2
        let middleValue = array[middleIdx]
        print(middleValue)
        
        if middleValue == value { return true }
        if value < middleValue {
            rightIdx = middleIdx - 1        }
        if value > middleIdx {
            leftIdx = middleIdx + 1
        }
    }
    return false
}

binarySearch(value: 33, array: [1, 2, 7, 17, 32, 33, 34, 39, 41, 46, 98, 100, 117])
