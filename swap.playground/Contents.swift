import UIKit

var a = 0, b = 1

func swap(_ a: inout Int, _ b: inout Int) {
    (a, b) = (b, a)
}

swap(&a, &b)
print(a)
print(b)
