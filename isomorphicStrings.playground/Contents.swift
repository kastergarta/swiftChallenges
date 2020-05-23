import UIKit

func isIsomorphic(_ s: String, _ t: String) -> Bool {
    var hash = [Character:Character]()
    var map = Set<Character>()
    var s = Array(s.characters)
    var t = Array(t.characters)
    for i in s.indices.suffix(from: 0) {
        if let r = hash[s[i]] {
            if r != t[i] {
                return false
            }
        } else {
            if map.contains(t[i]) {
               return false
            }
            hash[s[i]] = t[i]
            map.insert(t[i])
        }
    }
    return true
}
