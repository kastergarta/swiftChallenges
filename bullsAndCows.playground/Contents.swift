import UIKit

func getHint(_ secret: String, _ guess: String) -> String {
    
    var cows = 0
    var bulls = 0
    
    let secret = Array(secret.characters)
    let guess = Array(guess.characters)
    
    var digitsCount = Dictionary<Character,Int>()
    
    //count the num of each digit
    for i in 0..<secret.count {
        if let count = digitsCount[secret[i]] {
            digitsCount[secret[i]] = count + 1
        } else {
            digitsCount[secret[i]] = 1
        }
    }
    
    
    for i in 0..<guess.count {
        
        if secret[i] == guess[i] {  // bull matched, use one of this digits
            bulls += 1
            if var count = digitsCount[secret[i]] {
                count -= 1
                if count < 0 {  // previous cows wrongly use this digis
                    cows -= 1
                    digitsCount[secret[i]] = count + 1
                } else {
                    digitsCount[secret[i]] = count
                }
            }
        } else if let count = digitsCount[guess[i]] {
            if count != 0 {  // this digit still left, cows use one
                cows += 1
                digitsCount[guess[i]] = count - 1
            }
        }
    }
    return "\(bulls)A\(cows)B"
}
