import UIKit

class CoinChange {
    func coinChange(_ coins: [Int], _ amount: Int) -> Int {
        guard amount > 0 else {
            return 0
        }
        let coins = coins.sorted()
        var minAmounts = Array(repeating: -1, count: amount + 1)
        minAmounts[0] = 0
        
        for i in 1...amount {
            for coin in coins {
                if coin > i {
                    break
                }
                if minAmounts[i - coin] == -1 {
                    continue
                }
                minAmounts[i] = minAmounts[i] == -1 ? minAmounts[i - coin] + 1 : min(minAmounts[i - coin] + 1, minAmounts[i])
            }
        }
        return minAmounts[amount]
    }
}
