import UIKit

struct Easy_007_Reverse_Integer {
    // t = O(N), s = O(1)
    static func reverse(_ x: Int) -> Int {
        var negtive: Bool
        var i: UInt
        if x < 0 {
            negtive = true
            if x == Int.min {
                // The "minus 1 then add 1" trick is used to negate Int.min without overflow
                i = UInt(-(x+1))
                i += 1
            } else {
                i = UInt(-x)
            }
        } else {
            negtive = false
            i = UInt(x)
        }
        var res:UInt = 0
        while i > 0 {
            res = res * 10 + i % 10
            i = i / 10
        }
        if negtive == false && res > UInt(Int.max) {
            return 0
        } else if negtive == true && res == UInt(Int.max) + 1 {
            // When input is the reverse of Int.min
            return (-1) * Int(res-1) - 1
        } else if negtive == true && res > UInt(Int.max) + 1 {
            return 0
        }

        if negtive {
            return (-1) * Int(res)
        } else {
            return Int(res)
        }
    }
}
