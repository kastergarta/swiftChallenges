import UIKit

func swapPairs(_ head: ListNode?) -> ListNode? {
    
    var p: ListNode? = nil
    var i = head
    var n = head?.next
    let head = n != nil ? n : head
    
    while n != nil {
        i!.next = n!.next
        n!.next = i
        p?.next = n
        
        p = i
        i = i!.next
        n = i?.next
    }
    
    return head
    
}
)
