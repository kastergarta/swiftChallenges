import UIKit

func mergeSort(array: [Int]) -> [Int]{
    guard array.count > 1 else { return array }

    func merge(left: [Int], right: [Int]) -> [Int]{

        var mergedArray = [Int]()
        var left = left
        var right = right

        while left.count > 0 && right.count > 0 {
            if left.first! < right.first! {
                mergedArray.append(left.removeFirst())
            } else {
                mergedArray.append(right.removeFirst())
            }
        }
        return mergedArray + left + right
    }

    let middleIdx = array.count / 2
    let leftArray = mergeSort(array: Array(array[0..<middleIdx]))
    let rightArray = mergeSort(array: Array(array[middleIdx..<array.count]))

    return merge(left: leftArray, right: rightArray)
}

//func merge(left:[Int],right:[Int]) -> [Int] {
//    var mergedList = [Int]()
//    var left = left
//    var right = right
//
//    while left.count > 0 && right.count > 0 {
//        if left.first! < right.first! {
//            mergedList.append(left.removeFirst())
//        } else {
//            mergedList.append(right.removeFirst())
//        }
//    }
//    return mergedList + left + right
//}
//
//func mergeSort(list:[Int]) -> [Int] {
//    guard list.count > 1 else { return list }
//
//    let leftList = Array(list[0..<list.count/2])
//    let rightList = Array(list[list.count/2..<list.count])
//
//    return merge(left: mergeSort(list:leftList), right: mergeSort(list:rightList))
//}

mergeSort(array: [23, 98, 4, 99, 100, 17, 5, 35])
//mergeSort(list: [23, 98, 4, 99, 100, 98, 5, 35])

