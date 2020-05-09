import UIKit

func maxProfit(_ prices: [Int]) -> Int {
    
    var minBuyingPrice = Int.max
    var maxProfit = 0
    for price in prices {
        maxProfit = max(maxProfit, price - minBuyingPrice)
        minBuyingPrice = min(minBuyingPrice, price)
    }
    return maxProfit
}

var arr = [4,7,6,5,4,3,2,1]
maxProfit(arr)
