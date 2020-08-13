import UIKit

class LongestSubstringWithoutRepeatingCharacters {
    func lengthOfLongestSubstring(_ s: String) -> Int {
        var maxLen = 0, startIdx = 0, charToPos = [Character: Int]()
        let sChars = Array(s)
        
        for (i, char) in sChars.enumerated() {
            if let pos = charToPos[char] {
                startIdx = max(startIdx, pos)
            }
            
            // update to next valid position
            charToPos[char] = i + 1
            maxLen = max(maxLen, i - startIdx + 1)
        }
                return maxLen
    }
}
