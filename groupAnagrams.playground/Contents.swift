import UIKit

class GroupAnagrams {
    func groupAnagrams(_ strs: [String]) -> [[String]] {
        var sortedStrToStrs = [String: [String]]()
  
        for str in strs {
            let sortedStr = String(str.sorted())
            
            sortedStrToStrs[sortedStr, default: []].append(str)
        }
        
        return Array(sortedStrToStrs.values)
    }
}
