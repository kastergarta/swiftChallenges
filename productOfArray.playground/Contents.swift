import UIKit

class ProductExceptSelf {
    func productExceptSelf(_ nums: [Int]) -> [Int] {
        var zeroCount = 0
        let total = nums.reduce(1) {
            if $1 == 0 {
                zeroCount += 1
            }
            return $0 * ($1 == 0 ? 1 : $1)
        }
        if zeroCount > 1 {return nums.map({_ in return 0})}
        return nums.map({
            if zeroCount == 1 {
                return ($0 == 0 ? total : 0)
            } else {
                return ($0 == 0 ? total : total / $0)
            }
        })
    }
}
