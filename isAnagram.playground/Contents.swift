import UIKit

func isAnagram(_ s: String, _ t: String) -> Bool {
    let charCountS = countCharacter(s)
    let charCountT = countCharacter(t)
    
    if s.count != t.count { return false }
    
    for (key, value) in charCountS {
        if let count = charCountT[key] {
            if count == value {
                continue
            }
        }
        return false
    }
    return true
}

func countCharacter(_ s: String) -> [Character:Int] {
    var charCount = [Character:Int]() //Dictionary
    for character in s {
        if let _ = charCount[character] {
            charCount[character]! += 1
        } else {
            charCount[character] = 1
        }
    }
    return charCount
}

isAnagram("anna", "anna")

func checkForAnagram(firstString: String, secondString: String) -> Bool {
    return firstString.sorted() == secondString.sorted()
}

checkForAnagram(firstString: "anna", secondString: "amna")
