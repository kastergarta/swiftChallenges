import UIKit

func reverse(_ num: Int) -> Int {
    var num = num
    var reversedNum = 0
    while num != 0 {
        reversedNum = reversedNum * 10 + num % 10
        num /= 10
        if (reversedNum < 0 && num != 0 && Int(Int32.min) / 10 > reversedNum ) { return 0 }
        if (reversedNum > 0 && num != 0 && Int(Int32.max) / 10 < reversedNum ) { return 0 }
    }
    return reversedNum
}

reverse(153)

