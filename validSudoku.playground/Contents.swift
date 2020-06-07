import UIKit

class Solution {

var ruleRow = [Set<Character>](repeating: Set<Character>(), count: 9)
var ruleColumn = [Set<Character>](repeating: Set<Character>(), count: 9)
var ruleSquare = [Set<Character>](repeating: Set<Character>(), count: 9)

func isValidSudoku(_ board: [[Character]]) -> Bool {
    
    var indexOfRow = board.startIndex
    while indexOfRow != board.endIndex {
        
        var row = board[indexOfRow]
        var indexOfChar = row.startIndex
        while indexOfChar != row.endIndex {
            
            let char = row[indexOfChar]
            if char != "." {
                let passRuleRow = !ruleRow[indexOfRow].contains(char)
                let passRuleColumn = !ruleColumn[indexOfChar].contains(char)
                let passRuleSquare = !ruleSquare[(indexOfRow / 3) * 3 + indexOfChar / 3].contains(char)
                if passRuleRow && passRuleColumn && passRuleSquare {
                    ruleRow[indexOfRow].insert(char)
                    ruleColumn[indexOfChar].insert(char)
                    ruleSquare[(indexOfRow / 3) * 3 + indexOfChar / 3].insert(char)
                    indexOfChar = (indexOfChar + 1)
                } else {
                    return false
                }
            } else {
                indexOfChar = (indexOfChar + 1)
            }
        }
        indexOfRow = (indexOfRow + 1)
    }
    return true
}
