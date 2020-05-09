import UIKit

func intersect(_ arr1: [Int], _ arr2: [Int]) -> [Int] {
    
    var interSection = [Int]()
    var idx1 = arr1.startIndex
    var idx2 = arr2.startIndex
    
    while idx1 != arr1.endIndex && idx2 != arr2.endIndex {
        
        let num1 = arr1[idx1], num2 = arr2[idx2]
        if num1 == num2 {
            interSection.append(num1)
            idx1 += 1
            idx2 += 1
        } else if num1 < num2 {
            idx1 += 1
        } else {
            idx2 += 1
        }
    }
    return interSection
}

intersect([1, 2, 7, 19, 21, 23], [2, 7, 19])
// input arrays should be sorted
