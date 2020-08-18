import UIKit

// https://leetcode.com/problems/container-with-most-water/

class Container_With_Most_Water {
    class func maxArea(heightsArray: [Int]) -> Int {
        var j: Int = heightsArray.count - 1
        var i: Int = 0
        var mx: Int = 0

        while i < j {
            mx = max(mx, (j-i) * min(heightsArray[i], heightsArray[j]))

            if heightsArray[i] < heightsArray[j] {
                i += 1
            } else {
                j -= 1
            }
        }
        return mx
    }
}
