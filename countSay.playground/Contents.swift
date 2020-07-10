import UIKit

    
    class Solution {
        func countAndSay(_ n: Int) -> String {
            var str = "1"
            for _ in 1..<n {
                var tmpStr = ""
                var pNum = 0
                var pChar = str.first
                for (_, char) in str.enumerated() {
                    if char == pChar {
                        pNum += 1
                    } else {
                        tmpStr += "\(pNum)\(pChar!)"
                        pChar = char
                        pNum = 1
                    }
                }
                if pNum != 0 {
                    tmpStr += "\(pNum)\(pChar!)"
                }
                str = tmpStr
            }
            return str
        }
    }
