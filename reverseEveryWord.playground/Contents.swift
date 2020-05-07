import UIKit

func reverseEveryWord(string: String) -> String {
    let allWords = string.components(separatedBy: " ")
    var newSentence = ""
    for word in allWords {
        if newSentence != "" {
            newSentence += " "
        }
        let reversedWord = String(word.reversed())
        newSentence += reversedWord.removeVowels()
    }
    return newSentence
}

extension String {
    func removeVowels() -> String {
        var newWord = self
        for vowel in ["a", "e", "i", "o", "u"] {
            newWord = newWord.replacingOccurrences(of: vowel, with: "")
        }
        return newWord
    }
}

reverseEveryWord(string: "Hello Mr. Kissinger")
