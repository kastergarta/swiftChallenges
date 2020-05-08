import UIKit

enum BinaryTree<T: Comparable> {
  case empty
  indirect case node(BinaryTree, T, BinaryTree)
  
    var count: Int {
      switch self {
      case let .node(left, _, right):
        return left.count + 1 + right.count
      case .empty:
        return 0
      }
    }
    
    mutating func naiveInsert(newValue: T) {
    guard case .node(var left, let value, var right) = self else {
      self = .node(.empty, newValue, .empty)
      return
    }
        
    if newValue < value {
      left.naiveInsert(newValue: newValue)
    } else {
      right.naiveInsert(newValue: newValue)
    }

    }

    private func newTreeWithInsertedValue(newValue: T) -> BinaryTree {
      switch self {
      case .empty:
        return .node(.empty, newValue, .empty)
      case let .node(left, value, right):
        if newValue < value {
          return .node(left.newTreeWithInsertedValue(newValue: newValue), value, right)
        } else {
          return .node(left, value, right.newTreeWithInsertedValue(newValue: newValue))
        }
      }
    }
    
    mutating func insert(newValue: T) {
      self = newTreeWithInsertedValue(newValue: newValue)
    }
    
}

var binaryTree: BinaryTree<Int> = .empty
binaryTree.insert(newValue: 5)
print(binaryTree)
binaryTree.insert(newValue: 1)
print(binaryTree)
