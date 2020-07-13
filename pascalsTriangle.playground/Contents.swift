import UIKit

struct q118 {
    
    class Solution {
        func generate(_ numRows: Int) -> [[Int]] {
            if numRows == 0 {
                return []
            }
            var result = [[1]]
            for row in 1..<numRows {
                result.append([1])
                for i in 1..<row {
                    result[row].append(result[row-1][i-1] + result[row-1][i])
                }
                result[row].append(1)
            }
            return result
        }
    }
    
    static func getSolution() -> Void {
        print(Solution().generate(0))
    }
}
