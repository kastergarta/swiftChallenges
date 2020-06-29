import UIKit

import Foundation

struct q104 {
    
    class Solution {
        func maxDepth(_ root: TreeNode?) -> Int {
            if root == nil {
                return 0
            } else {
                return 1 + max(maxDepth(root!.left), maxDepth(root!.right))
            }
        }
        
    }
    
    static func getSolution() -> Void {
        let root = BinaryTreeHelper.buildTree(withNodes: [1,2,3,4,nil,6,7,8,nil,10,nil,nil,nil,14,15])

        print(root ?? "")
        
        print(Solution().maxDepth(root))
    }
}
