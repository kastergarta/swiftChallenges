import UIKit


    
    class Solution {
        
        var hashTable: Set<String>!
        
        func isHappy(_ n: Int) -> Bool {
            hashTable = Set<String>()
            var n = n
            while true {
                var digits = [Int]()
                while n != 0 {
                    digits.append(n % 10)
                    n /= 10
                }
                
                if exist(digits) { return false }
                
                for digit in digits {
                    n += (digit * digit)
                }
                
                if n == 1 { return true }
            }
            
        }
        
        func exist(_ digits: [Int]) -> Bool {
            let digits = digits.sorted()
            var hash = ""
            for digit in digits {
                hash += "\(digit)"
            }
            if hashTable.contains(hash) {
                return true
            } else {
                hashTable.insert(hash)
                return false
            }
            
        }
        
    }
