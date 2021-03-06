import UIKit

class ReorderList {
    func reorderList(head: ListNode?) {
        guard let head = head else {
            return
        }
  
        var prev: ListNode? = head
        var post: ListNode? = head
  
        _split(&prev, &post)
        prev = head
  
        post = _reverse(&post)
  
        _merge(&prev, &post)
    }

    private func _split(inout prev: ListNode?, inout _ post: ListNode?) {
        while post != nil && post!.next != nil {
            prev = prev!.next
            post = post!.next!.next
        }
  
        post = prev!.next
        prev!.next = nil
    }

    private func _reverse(inout head: ListNode?) -> ListNode? {
        var prev = head
        var temp: ListNode?
  
        while prev != nil {
            let post = prev!.next
    
            prev!.next = temp
    
            temp = prev
            prev = post
        }
  
        return temp
    }

    private func _merge(inout prev: ListNode?, inout _ post: ListNode?) {
        while prev != nil && post != nil{
            let preNext = prev!.next
            let posNext = post!.next
    
            prev!.next = post
            post!.next = preNext
    
            prev = preNext
            post = posNext
        }
    }
}
