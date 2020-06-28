import UIKit
import Foundation

fileprivate func < <T : Comparable>(lhs: T?, rhs: T?) -> Bool {
  switch (lhs, rhs) {
  case let (l?, r?):
    return l < r
  case (nil, _?):
    return true
  default:
    return false
  }
}

fileprivate func > <T : Comparable>(lhs: T?, rhs: T?) -> Bool {
  switch (lhs, rhs) {
  case let (l?, r?):
    return l > r
  default:
    return rhs < lhs
  }
}


struct q13 {
    
    class Solution {
        func romanToInt(_ s: String) -> Int {
            
            let romanUnit = [Character("I"):1, Character("V"):5, Character("X"):10,
                             Character("L"):50, Character("C"):100, Character("D"):500,
                             Character("M"):1000]
            
            let reversedChars = s.reversed()
            var integer = 0
            var index = reversedChars.startIndex
            while index != reversedChars.endIndex {
                let char1 = reversedChars[index]
                if reversedChars.index(after: index) == reversedChars.endIndex {
                    integer += romanUnit[char1]!
                    break
                }
                let char2 = reversedChars[reversedChars.index(after: index)]
                
                if romanUnit[char1] > romanUnit[char2] && ["I", "C", "X"].contains(String(char2)) {
                    
                    integer = integer + romanUnit[char1]! - romanUnit[char2]!
                    index = reversedChars.index(index, offsetBy: 2)
                    
                } else  {
                    
                    integer += romanUnit[char1]!
                    index = reversedChars.index(after: index)
                    
                }
            }
            
            return integer
        }
    }
}
