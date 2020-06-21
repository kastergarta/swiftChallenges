import UIKit

struct q141 {
    
    class Solution {
        func hasCycle(_ head: ListNode?) -> Bool {
            
            if head == nil { return false }
            
            var fastPtr = head?.next?.next
            var slowPtr = head?.next
            
            while fastPtr != nil && slowPtr != nil {
                if fastPtr === slowPtr {
                    return true
                } else {
                    fastPtr = fastPtr?.next?.next
                    slowPtr = slowPtr?.next
                }
            }
            return false
        }
    }
    
    static func getSolution() -> Void {
        
        let head = LinkedListHelper.buildLinkedList(withNodes: [1,2,3,4,5])
        head?.next?.next?.next?.next?.next = head?.next?.next?.next
        
        print(Solution().hasCycle(head))
    }
}
