import UIKit
class Node<T> {
    
        var value: T
        init(value: T){
        self.value = value
        var next: Node<T>?
        weak var previous: Node<T>?
    }
}

public class LinkedList {
  fileprivate var head: Node?
  private var tail: Node?

  public var isEmpty: Bool {
    return head == nil
  }

  var first: Node? {
    return head
  }

  var last: Node? {
    return tail
  }
    
    func append(value: String) {
      let newNode = Node(value: value)
      if let tailNode = tail {
        newNode.previous = tailNode
        tailNode.next = newNode
      }
      else {
        head = newNode
      }
      tail = newNode
    }

    func nodeAt(index: Int) -> Node? {
      if index >= 0 {
        var node = head
        var i = index
        while node != nil {
          if i == 0 { return node }
          i -= 1
          node = node!.next
        }
      }
      return nil
    }
    
    func removeAll() {
      head = nil
      tail = nil
    }
    
    func remove(node: Node) -> String {
      let prev = node.previous
      let next = node.next

      if let prev = prev {
        prev.next = next // 1
      } else {
        head = next // 2
      }
      next?.previous = prev // 3

      if next == nil {
        tail = prev // 4
      }

      // 5
      node.previous = nil
      node.next = nil

      // 6
      return node.value
    }
}

// https://www.raywenderlich.com/947-swift-algorithm-club-swift-linked-list-data-structure
// https://www.youtube.com/watch?v=gNu-F_LnC0I

