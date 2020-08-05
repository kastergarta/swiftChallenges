import UIKit

class DiagonalTraverse {
    func findDiagonalOrder(_ matrix: [[Int]]) -> [Int] {
        var res = [Int]()
        
        guard matrix.count > 0 && matrix[0].count > 0 else {
            return res
        }
        
        let m = matrix.count, n = matrix[0].count
        var fromTop = false
        
        for sum in 0...m + n - 2 {
            if fromTop {
                for i in max(sum - n + 1, 0)...min(m - 1, sum) {
                    res.append(matrix[i][sum - i])
                }
            } else {
                for i in (max(sum - n + 1, 0)...min(m - 1, sum)).reversed() {
                    res.append(matrix[i][sum - i])
                }
            }
            
            fromTop = !fromTop
        }
        
        return res
    }
}
