import UIKit

func bubbleSort(array: [Int]) -> [Int] {
    var newArray = array
    for _ in 0..<newArray.count {
        for j in 1..<newArray.count {
            if newArray[j] < newArray[j-1]{
                let tmp = newArray[j-1]
                newArray[j-1] = newArray[j]
                newArray[j] = tmp
            }
        }
    }
    return newArray
}

bubbleSort(array: [1, 17, 98, 45, 100, 33, 3, 9])
