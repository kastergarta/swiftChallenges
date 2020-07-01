import UIKit

struct q21 {
    
    class Solution {
        func mergeTwoLists(_ l1: ListNode?, _ l2: ListNode?) -> ListNode? {
            
            if l1 == nil { return l2 }
            if l2 == nil { return l1 }
            
            let head = l1!.val < l2!.val ? l1 : l2    // point to the head of merged list
            var tmp: ListNode? = nil                  // point to previous selected nodes
            var l1 = l1, l2 = l2
            
            while l1 != nil && l2 != nil {
                if l1!.val < l2!.val {
                    tmp?.next = l1
                    tmp = l1
                    l1 = l1!.next
                } else {
                    tmp?.next = l2
                    tmp = l2
                    l2 = l2!.next
                }
            }
            tmp?.next = l1 != nil ? l1 : l2
            return head
        }
    }

    static func getSolution() -> Void {
        
        var l1 = LinkedListHelper.buildLinkedList(withNodes: [1,5,8,9,13])
        var l2 = LinkedListHelper.buildLinkedList(withNodes: [0,2,3,6,11,14])
        
        print(Solution().mergeTwoLists(l1,l2) ?? "")
        
        l1 = LinkedListHelper.buildLinkedList(withNodes: [1,2,3,4,5])
        l2 = LinkedListHelper.buildLinkedList(withNodes: [1,2,3,4,5,6])
        print(Solution().mergeTwoLists(l1, l2) ?? "")
        
        
        l1 = LinkedListHelper.buildLinkedList(withNodes: [1,2,3,4,5])
        l2 = nil
        print(Solution().mergeTwoLists(l1, l2) ?? "")
        
    }
}
