import UIKit

struct Stack<Element> {
  var array: [Element] = []

  mutating func push(_ element: Element) {
    array.append(element)
  }
    
  mutating func pop() -> Element? {
    return array.popLast()
  }
    
  mutating func peek() -> Element? {
      return array.last
  }
    
    var isEmpty: Bool {
      return array.isEmpty
    }

    var count: Int {
      return array.count
    }
}

//extension Stack<Element>: CustomStringConvertible {
//  var description: Element {
//
//    let topDivider = "---Stack---\n"
//    let bottomDivider = "\n-----------\n"
//    let stackElements = array.map { "\($0)" }.reversed().joined(separator: "\n")
//    return topDivider + stackElements + bottomDivider
//  }
//}

var rwBookStack = Stack<String>()
print(rwBookStack)

rwBookStack.push("3D Games by Tutorials")
rwBookStack.push("Ramen")
rwBookStack.push("Kissinger")
print(rwBookStack)
rwBookStack.peek()
print(rwBookStack)
rwBookStack.count
