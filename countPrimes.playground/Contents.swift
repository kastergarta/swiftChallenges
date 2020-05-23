import UIKit

func countPrimes(_ n: Int) -> Int {
    var isPrime = [Bool](repeating: false, count: n+1)
    var primeCount = 0
    if n <= 1 {
        return 0
    }
    var num = 2
    let max = Int(sqrt(Double(n)))
    while num <= max {
        if !isPrime[num] {
            var primeNum = num * num
            while primeNum < n {
                isPrime[primeNum] = true
                primeNum += num
            }
        }
        num += 1
    }
    num = 2
    while num < n {
        if !isPrime[num] {
            primeCount += 1
        }
        num += 1
    }
    return primeCount
}
