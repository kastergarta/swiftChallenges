import Foundation

func validBraces(_ string:String) -> Bool {

var ref = Array("()[]{}")
var stack = [Character]()
  
for (idx, char) in string.enumerated() {
    if ref.index(of: char)! % 2 == 0 { 
        stack.append(char)
        } else {                           
        if stack.isEmpty {
        return false
        } else {
            if ref.index(of: char)! - ref.index(of: stack.last!)! == 1 { 
                stack.removeLast()
            } else {
            return false
            }
        }
    }
}
return stack.isEmpty
}