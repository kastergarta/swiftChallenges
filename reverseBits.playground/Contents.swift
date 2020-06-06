import UIKit

func reversedBits(_ n: UInt32) -> UInt32 {
    var n: UInt32 = n
    var m: UInt32 = 0
    var i: UInt32 = 32
    while i > 0 && n != 0  {
        m = m << 1 + n & 0b1
        n = n >> 1
        i -= 1
    }
    m = m << i
    return m
}
