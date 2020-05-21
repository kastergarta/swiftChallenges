import UIKit

import Foundation

struct q223 {
    
    class Solution {
        
        class Rectangle {
            var bottomLeft: (x: Int, y: Int)!
            var topRight: (x: Int, y: Int)!
            
            init(bottomLeftX: Int, bottomLeftY: Int, topRightX: Int, topRightY: Int) {
                bottomLeft = (bottomLeftX, bottomLeftY)
                topRight = (topRightX, topRightY)
            }
            
            func intersectArea(_ rect: Rectangle) -> Int {
                let x = max(0, min(topRight.x, rect.topRight.x) - max(bottomLeft.x, rect.bottomLeft.x))
                let y = max(0, min(topRight.y, rect.topRight.y) - max(bottomLeft.y, rect.bottomLeft.y))
                return x * y
            }
            
            func area() -> Int {
                return (topRight.x - bottomLeft.x) * (topRight.y - bottomLeft.y)
            }
            
        }
        
        func computeArea(_ A: Int, _ B: Int, _ C: Int, _ D: Int, _ E: Int, _ F: Int, _ G: Int, _ H: Int) -> Int {
            
            let rectA = Rectangle(bottomLeftX: A,bottomLeftY: B,topRightX: C,topRightY: D)
            let rectB = Rectangle(bottomLeftX: E,bottomLeftY: F,topRightX: G,topRightY: H)
            return rectA.area() + rectB.area() - rectA.intersectArea(rectB)
            
            
            
        }
    }
    
    static func getSolution() -> Void {
        print(Solution().computeArea(0, 0, 2, 2, -1, -1, 1, 1))
    }
}
